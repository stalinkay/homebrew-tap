cask "upscayl" do
  version "2.5.5"
  sha256 "aa0e17ce93bff594191e07fa53d4ee2b0977973d8cb589f7363d78ef9bcd0593"

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/upscayl-#{version}-mac.dmg"
  name "upscayl"
  desc "Free and Open Source AI Image Upscaler for Linux, MacOS and Windows built with Linux-First philosophy."
  homepage "https://www.upscayl.org"

  livecheck do
    url :stable
    regex(/^upscayl[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = json["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "upscayl.app"
end
