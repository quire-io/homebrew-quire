class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.7"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.7/quire-darwin-arm64"
      sha256 "2df1e952bccbad3b7140ddb4536c291dc3d5cc563a9f007ed95e777bbc22cde1"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.7/quire-darwin-x64"
      sha256 "15d8df2b52f7d13538be875f3b26f1476a6c73bb78194e85b79b10fc27ebe6cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.7/quire-linux-arm64"
      sha256 "b311789f625f1f9e3a207d5a0c918c15f0f810aac3614db855316f5423c14deb"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.7/quire-linux-x64"
      sha256 "ad51bd9b7a9176a4551992404090c6e891f70a357683fa4dcb96c23e3c649bf1"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
