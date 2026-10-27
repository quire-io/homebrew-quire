class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.3"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.3/quire-darwin-arm64"
      sha256 "a3ca95151e833971a4f38bcf6622c3198a6b13cfc02d9cc9d777b69fa3e92040"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.3/quire-darwin-x64"
      sha256 "e92b2cde7155a53ed43ae54989c815aa50d37e4640b0287b61f4209a58b74900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.3/quire-linux-arm64"
      sha256 "19e492a03406f3fab78e481299df050b7ab259bd102f910bea55b9ee5da2089e"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.3/quire-linux-x64"
      sha256 "d21f35a87bb44e39cf0c1751b668fbd1adfa853c12a16ef34a7ba75313ec4c79"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
