class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "0.1.3"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.3/quire-darwin-arm64"
      sha256 "b3c84a84e651fec2816266ab3317a43cc80872ece4183a87e3a0ca2e0a5b7d80"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.3/quire-darwin-x64"
      sha256 "0a3cafe3aab8c0af4f7ea188724a3c68a6ca4790d63bb855313449491b19266f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.3/quire-linux-arm64"
      sha256 "ab1d278c1cb44d86e2e2f5670159deed82f374381757a6463ea7a889046ae343"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.3/quire-linux-x64"
      sha256 "e8778c669ddacd2d07d0cc48874479cd233c1b86140c6a6f4f904871c656b77b"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
