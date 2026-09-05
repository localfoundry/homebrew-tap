require "language/node"

class SearchRotation < Formula
  desc "MCP server for web search and page extraction across multiple providers"
  homepage "https://github.com/RobinBially/search-rotation"
  url "https://github.com/RobinBially/search-rotation/releases/download/v0.4.2/search-rotation-0.4.2.tgz"
  sha256 "6c6b6a4d684ae481517ce7145e1e6320964574a79ea238c0895856524270e02c"
  license "MIT"

  depends_on "node@24"

  include Language::Node::Shebang

  def install
    ENV.prepend_path "PATH", Formula["node@24"].opt_bin
    system Formula["node@24"].opt_bin/"npm", "install", *std_npm_args
    rewrite_shebang detected_node_shebang, libexec/"lib/node_modules/search-rotation/dist/index.js"
    bin.install_symlink libexec/"bin/search-rotation"
  end

  test do
    ENV["SEARCH_ROTATION_HOME"] = (testpath/"config").to_s
    IO.popen([bin/"search-rotation", "--no-dashboard"], "r+") do |server|
      server.puts JSON.generate(jsonrpc: "2.0", id: 1, method: "initialize", params: {
        protocolVersion: "2024-11-05",
        capabilities: {},
        clientInfo: { name: "homebrew-test", version: "1.0.0" },
      })
      server.flush
      assert IO.select([server], nil, nil, 30), "MCP initialization timed out"
      initialized = JSON.parse(server.readline)
      assert_equal version.to_s, initialized.dig("result", "serverInfo", "version")

      server.puts JSON.generate(jsonrpc: "2.0", method: "notifications/initialized")
      server.puts JSON.generate(jsonrpc: "2.0", id: 2, method: "tools/list")
      server.flush
      assert IO.select([server], nil, nil, 30), "MCP tool listing timed out"
      tools = JSON.parse(server.readline).dig("result", "tools")
      assert_equal %w[engine_status fetch_url open_dashboard web_search], tools.map { |tool| tool.fetch("name") }.sort
    ensure
      server.close_write unless server.closed?
    end
  end
end
