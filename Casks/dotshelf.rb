cask "dotshelf" do
  version "0.2.0"
  sha256 "1a63a2ce487a81f50d352690a5e6a29f4c45abcf26d9dd4de320ba2a8da5440c"

  url "https://github.com/robin-bially/DotShelf/releases/download/v#{version}/DotShelf-#{version}.zip"
  name "DotShelf"
  desc "Native editor for configuration files"
  homepage "https://github.com/robin-bially/DotShelf"

  depends_on macos: :sonoma

  app "DotShelf.app"
end
