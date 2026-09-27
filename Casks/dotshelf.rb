cask "dotshelf" do
  version "0.3.0"
  sha256 "5ab4ef7bf2c804bfa82843a6b5694689b8641e65d38ca8a0babb1580cd38371f"

  url "https://github.com/robin-bially/DotShelf/releases/download/v#{version}/DotShelf-#{version}.zip"
  name "DotShelf"
  desc "Native editor for configuration files"
  homepage "https://github.com/robin-bially/DotShelf"

  depends_on macos: :sonoma

  app "DotShelf.app"
end
