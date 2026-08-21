class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "0.1.7"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.7/quire-darwin-arm64"
      sha256 "314313272642b061641341c8384551020b46c2e529d24d45ad4adf599bcdbd3f"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.7/quire-darwin-x64"
      sha256 "b20a9789f010c005ffc243bfcc9e4cee9a87394b0c150644e212ec7fe249c2f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.7/quire-linux-arm64"
      sha256 "0d0386dae3aebc5bc3685d4e5d0f1b38eda51ac5a088f2d1b9b53f8c50eccafc"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.7/quire-linux-x64"
      sha256 "1c7c2137c769baec541ebc653df147740ee8eb25b397090cbe7d479a0924c5e4"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
