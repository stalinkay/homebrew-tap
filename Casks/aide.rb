cask "aide" do
  version "1.84.2.23314"
  sha256 "1c540bfe2573187b63b1dd846c0fed387ada309e3e309099742d9f4189805164"

  url "https://github.com/codestoryai/binaries/releases/download/#{version}/Aide-darwin-x64-#{version}.zip"
  name "Aide"
  desc "Instruct AI agents to build your software"
  homepage "https://codestory.ai"

  app "Aide.app" # Specify the path to the app within the downloaded zip file
end
