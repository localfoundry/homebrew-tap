cask "dotshelf" do
  version "0.1.0"
  sha256 "3f770c0e92971008233447f6dc5a7931873c68180a9f2feb84827ac470fe257f"

  url "https://github.com/RobinBially/DotShelf/releases/download/v#{version}/DotShelf-#{version}.zip"
  name "DotShelf"
  desc "Native editor for configuration files"
  homepage "https://github.com/RobinBially/DotShelf"

  depends_on macos: :sonoma

  app "DotShelf.app"
end
