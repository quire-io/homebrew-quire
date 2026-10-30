class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.5"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.5/quire-darwin-arm64"
      sha256 "22ed0ef9deaf36f95ee2ae19368f53658fbcdf9371c4e72f10a3ab211ab24787"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.5/quire-darwin-x64"
      sha256 "d5c74c79be638379cb10c6288c02e57b1c3c35267f32ccaa6686a10666e28f0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.5/quire-linux-arm64"
      sha256 "330be064834af4f3ec265f8ebb303f39b6a439567541c8d1509f37bbc60bcce4"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.5/quire-linux-x64"
      sha256 "5366c1e11db89c35c62adf2a15a15709db991bde36d56e7f4df5838a0036ec36"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
