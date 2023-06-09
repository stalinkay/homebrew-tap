cask "upscayl" do
  version "2.5.5"
  sha256 "aa0e17ce93bff594191e07fa53d4ee2b0977973d8cb589f7363d78ef9bcd0593"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg"
  name "upscayl"
  desc "Free and Open Source AI Image Upscaler for Linux, MacOS and Windows built with Linux-First philosophy."
  homepage "https://www.upscayl.org"

  app "upscayl.app"
end
