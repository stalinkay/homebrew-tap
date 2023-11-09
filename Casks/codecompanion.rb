cask "codecompanion" do
  version "latest" # Replace 'latest' with the actual version number when known
  sha256 "auto" # Use 'auto' for Casks with version :latest

  url "https://codecompanion.s3.us-west-2.amazonaws.com/CodeCompanion.dmg"
  name "CodeCompanion"
  desc "All-in-one coding assistant. Prototype faster, code smarter and scale your productivity. Available anytime, right on your desktop."
  homepage "https://codecompanion.ai"

  app "CodeCompanion.app"
end
