cask "julia" do
  version "1.5.3"
  sha256 "802cdb67748bbd8a943604981d4f2aef8a7ea8bc9b31abd"

  url "https://julialang-s3.julialang.org/bin/mac/x64/#{version.major_minor}/julia-#{version}-mac64.dmg"
  name "Julia"
  desc "Programming language for technical computing"
  homepage "https://julialang.org/"

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["prerelease"] || release["draft"]

        match = release["tag_name"].match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  zap trash: "~/.julia"
end
