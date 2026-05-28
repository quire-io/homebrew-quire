class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "0.1.6"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.6/quire-darwin-arm64"
      sha256 "5e3456a4ea1a5173c306e0ecbc742474597d0cf6c4421d536a972628beef844d"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.6/quire-darwin-x64"
      sha256 "6913a852ff6d16bca4ea67183706cda7ae24c63ae4f73bc6c7d43c088316164f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.6/quire-linux-arm64"
      sha256 "bf6fd2afa42df99c5923a24e13b7328d8cda1b82139393673087a61bc7ba59d1"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.6/quire-linux-x64"
      sha256 "7b8c9221918fa54983e2077ac0c92b82b6ef961f5b7422bd95ec82ff1fbc6740"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
