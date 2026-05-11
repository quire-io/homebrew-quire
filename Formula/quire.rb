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
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.2/quire-darwin-arm64"
      sha256 "e834de214701194a6cadf01976b6d882d9081680b8562cfa3a63bf4fd8c68ca8"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.2/quire-darwin-x64"
      sha256 "e9cae097548be630f38e999558376da48f7ecdbee1373dbb9c45179f05fef6df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.2/quire-linux-arm64"
      sha256 "1077c0957d959a1f47f5025e7d84398576bfe3759a2132cc9d4293bbf00c48be"
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
