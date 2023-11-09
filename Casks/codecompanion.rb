cask "codecompanion" do
  version "latest" # Replace 'latest' with the actual version number when known
  sha256 "aa72bdb309131ed45adb404bff2c04525628358532a1fce50521a3dfccdeda42" # Use 'auto' for Casks with version :latest

  url "https://codecompanion.s3.us-west-2.amazonaws.com/CodeCompanion.dmg"
  name "CodeCompanion"
  desc "All-in-one coding assistant. Prototype faster, code smarter and scale your productivity. Available anytime, right on your desktop."
  homepage "https://codecompanion.ai"

  app "CodeCompanion.app"
end
