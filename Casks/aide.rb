cask "aide" do
  version "1.84.2.23314"
  
  if Hardware::CPU.intel?
    sha256 "1c540bfe2573187b63b1dd846c0fed387ada309e3e309099742d9f4189805164" # Replace with the actual SHA256 for the Intel version
    url "https://github.com/codestoryai/binaries/releases/download/#{version}/Aide-darwin-x64-#{version}.zip"
  else
    sha256 "eb7aa3d19d5867ea0da8e470d4064eb24fcf1faf464df30ca2917ab7397a80d1" # Replace with the actual SHA256 for the ARM64 version
    url "https://github.com/codestoryai/binaries/releases/download/#{version}/Aide-darwin-arm64-#{version}.zip"
  end

  name "Aide"
  desc "Instruct AI agents to build your software"
  homepage "https://codestory.ai"

  app "Aide.app"
end
