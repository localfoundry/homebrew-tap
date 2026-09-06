cask "smartastic" do
  version "1.1.0"
  sha256 "bb09d0a812a1be254678d988216fff566ada87e37cab8e3aa7a42f22cd58c406"

  url "https://github.com/RobinBially/SMARTastic/releases/download/v#{version}/SMARTastic-#{version}.zip"
  name "SMARTastic"
  desc "Native SSD and HDD health monitor"
  homepage "https://github.com/RobinBially/SMARTastic"

  depends_on formula: "smartmontools"
  depends_on macos: :sonoma

  app "SMARTastic.app"
end
