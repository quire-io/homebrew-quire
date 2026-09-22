class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.0.0"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.0.0/quire-darwin-arm64"
      sha256 "7b7a55bc37f98770e7ef9d3106befe683f85fbf0542996c6952bb942d84ab836"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.0.0/quire-darwin-x64"
      sha256 "67ca8c230a0d94df6630b03efbc4469d3e92fca98038a1ca559b9ccd6ada3090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.0.0/quire-linux-arm64"
      sha256 "61090f1acecd51616f6163ae01be287aa68614e0acdc2193fcf909e22b18f755"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.0.0/quire-linux-x64"
      sha256 "d4117be0de9c2bf1906634cbdbbf77842f2e27c9c7731c0d4481c0fda0520e9e"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
