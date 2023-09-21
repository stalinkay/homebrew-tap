cask "upscayl" do
  version "2.8.5"
  sha256 "9161d7cc98f210c14d99b9a35dae02b8ad421d2dc7afdefd9e5a98e1a3f58d8f"

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
