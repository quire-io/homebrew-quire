class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "0.1.2"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.1/quire-darwin-arm64"
      sha256 "f5974424bcaf5bc170f55c0a9cb3f3093c0abe99cc4b769bd4653920d2963012"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.1/quire-darwin-x64"
      sha256 "1e75410b1b8aa177efe742dfa3a6e36584b9e34ea3d39f0ca0dd71e5d5c82688"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.1/quire-linux-arm64"
      sha256 "a07fa787f5bb5080c131fcb0d727f9d2d7205036fd74521719e3f7150033ec18"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.2/quire-linux-x64"
      sha256 "d38c92cf8054bdd0fb261ed026cf48f51a75d1c9f28160dd916a85e760aef9c1"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
