class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.4"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.4/quire-darwin-arm64"
      sha256 "75a8dc34cd717ae1edb753a66aac65c2d03c285f9b9b9b9b4547d172a9d7d09b"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.4/quire-darwin-x64"
      sha256 "2d222249dd97776842be2794deb7780e9907a65ad2906a622f936cd241055fc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.4/quire-linux-arm64"
      sha256 "c6752389e46d74c15b2e3338ded910e8d6727d6316d6fc160058c0029ea58681"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.4/quire-linux-x64"
      sha256 "b9908bb49b50a4baa41f46eb6b27436ab1fe874504ef9ab94ec3723cbe59b37a"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
