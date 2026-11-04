class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.6"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.6/quire-darwin-arm64"
      sha256 "527387aa7162708b29efe143641568fc647076529a02f2b0ec17f0581875d5b4"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.6/quire-darwin-x64"
      sha256 "c9abaa6ef3c520e0a29bd7e4a52e32b39c5c0215905e19b26ff7e61f387a81ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.6/quire-linux-arm64"
      sha256 "635d081d269703c04051c2e508a90dc6ef66f535b1eb57f21cbc71fd0eeb5fd7"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.6/quire-linux-x64"
      sha256 "2978189e3ab0428f85801c3ed0067c79dc855121212ecef09391b42ed837eddc"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
