class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "0.1.4"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.4/quire-darwin-arm64"
      sha256 "5d36509a57347554f8a1307876616e71f98cd333a9b41970b93cc589c9561905"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.4/quire-darwin-x64"
      sha256 "643588e19e435c5d85af7c9642e722286c59990c20b4d3d84e05c9b1c6112293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.4/quire-linux-arm64"
      sha256 "f3e01d792c0dcbc2dfb0715041f5b18c2190e38736d74237a533736a66619216"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.4/quire-linux-x64"
      sha256 "7420df93fc515f10aaeff8426b99bf2c2ba0cdee93077c188895ad41c2b9ae83"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
