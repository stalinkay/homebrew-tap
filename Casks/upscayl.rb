cask "upscayl" do
  version "2.5.1"
  sha256 "bd49983105e9478d239aeb44dfd1ebf38cdc04e6e81a0de281e3093e76cd5a5d"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg"
  name "upscayl"
  desc "Free and Open Source AI Image Upscaler for Linux, MacOS and Windows built with Linux-First philosophy."
  homepage "https://www.upscayl.org"

  app "upscayl.app"
end
