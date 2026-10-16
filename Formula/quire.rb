class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.1"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.1/quire-darwin-arm64"
      sha256 "9b64f8b6c427caa1b8b8cc3d86b3dda68c9542aa36f441b354f4ad2a273ef19a"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.1/quire-darwin-x64"
      sha256 "8d0a14221be43f569d5e477b91ff3856b79502f37e36149db9da52f6009ee431"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.1/quire-linux-arm64"
      sha256 "6283ebefb3098dbdac912facbbb63fc1832dcd13e380815f2d42e649e8307ab6"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.1/quire-linux-x64"
      sha256 "36360e4b16d5fd6af3acb2ff399f3e20bc4af01e877a830dff41540f17830546"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
