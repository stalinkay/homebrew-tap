cask "sidekick-for-flutter" do
  version "1.1.1"
  sha256 "573c5a2b61842cde04d4511ee976c97ac463d16bb97dd2a6c8dbd083600343ca"

  url "https://github.com/fluttertools/sidekick/releases/download/v#{version}/sidekick-macos-#{version}.dmg"
  name "sidekick-for-flutter"
  desc "A simple desktop interface for tools that enhance Flutter's development experience to make it even more delightful."
  homepage "https://github.com/fluttertools/sidekick"

  livecheck do
    url :stable
    regex(/^sidekick[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "sidekick.app" # Assuming the app name is "sidekick.app". Adjust if necessary.
end
