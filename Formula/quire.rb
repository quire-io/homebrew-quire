class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.0"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.0/quire-darwin-arm64"
      sha256 "af780002a633c83ffa7dc27b12e041db818ed1815e672e9eed278696ea868cc0"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.0/quire-darwin-x64"
      sha256 "806e5a475dd626cbef6d7a162bfe81ecb1e64b8c2fbcf1484601f94828160aae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.0/quire-linux-arm64"
      sha256 "e5b8892d767f2de86d8d711fafc75a9da20a7878be338175011538e29943a534"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.0/quire-linux-x64"
      sha256 "28b36ad5fd046616793a1e7af30021624d56001ac21e595e50443acc62e3ab7d"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
