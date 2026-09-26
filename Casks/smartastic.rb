cask "smartastic" do
  version "1.1.1"
  sha256 "5132155f707610df2a80b3f15671d5e472fdca14dbbfdac355748eef12cfe49d"

  url "https://github.com/robin-bially/SMARTastic/releases/download/v#{version}/SMARTastic-#{version}.zip"
  name "SMARTastic"
  desc "Native SSD and HDD health monitor"
  homepage "https://github.com/robin-bially/SMARTastic"

  depends_on formula: "smartmontools"
  depends_on macos: :sonoma

  app "SMARTastic.app"
end
