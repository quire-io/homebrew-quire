class Quire < Formula
  desc "Command-line interface to the Quire API"
  homepage "https://github.com/quire-io/quire-cli"
  version "1.1.2"
  license "ISC"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.2/quire-darwin-arm64"
      sha256 "459f1d5afc8e054e3e903f9b2346a19fb067ebaddacecb26ae8ffe1e6a610ad2"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.2/quire-darwin-x64"
      sha256 "43d257137740183f4465272b2c0759f3693641a8f536228860b2993591c1938b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.2/quire-linux-arm64"
      sha256 "24fbf06354f639799c1bda5b687d0ade5eadc3c01dd94c8363bbc82dfe944b30"
    end
    on_intel do
      url "https://github.com/quire-io/quire-cli/releases/download/v1.1.2/quire-linux-x64"
      sha256 "9b6843ea6693fe0a8e47bb5b00d4049eda650b423d0b264cf6aad37826bf61a8"
    end
  end

  def install
    bin.install Dir["quire-*"].first => "quire"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quire --version")
  end
end
