class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "0.1.5"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.5/quire-darwin-arm64"
      sha256 "ce23b53695133b2596e20d13c206014e4713ea19d9f17b24065304318284cb28"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.5/quire-darwin-x64"
      sha256 "e1a6aa2ddf4b2c8b851413633a1343a48552d4fd9f03a1f9db5f4f4b9010ec0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.5/quire-linux-arm64"
      sha256 "a9e3e5b450b5e5fe7922243987b7681f679d33c33d0690b9940685e4842febd1"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v0.1.5/quire-linux-x64"
      sha256 "c6a02d7d844a7b54190d4c0c283452cb67c3cad6211a08663d092700c8e88a73"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
