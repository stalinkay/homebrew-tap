cask "macports" do
  version "2.8.1"
  sha256 "577512628a4b9237b3eccd0e18af28e06855f5d55bd71957c37a9c7c362de5f3"

  url "https://github.com/macports/macports-base/releases/download/v#{version}/MacPorts-#{version}-13-Ventura.pkg"
  name "macports"
  desc "Open-source community initiative to design an easy-to-use system for compiling, installing, and upgrading either command-line, X11 or Aqua based open-source software on the macOS operating system"
  homepage "https://www.macports.org/"

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

  pkg "MacPorts-#{version}-13-Ventura.pkg"

  uninstall pkgutil: "org.macports.MacPorts",
            script:  {
                        executable: "/opt/local/bin/port",
                        args: ["-fp", "uninstall", "installed"],
                        sudo: true,
                      }
end
