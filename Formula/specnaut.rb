class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.5.0/specnaut-macos-arm64"
      sha256 "0516a9356f79580c6accaf9b8cf70bd46b621a346e223cb9a27ddaa751ad8c1d"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.5.0/specnaut-macos-x64"
      sha256 "823d49b1e11b60f88a2783e66abc93d11f251abd337a9d59d49b42958454bdbb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.5.0/specnaut-linux-arm64"
      sha256 "869f73ba4c8cf9ae256db17877ce2cb9b0f5e2031058baba09df6287ba903e14"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.5.0/specnaut-linux-x64"
      sha256 "f141941356d2f55ec9e9672a78b033d2c09ef4294db9a53eb17f21aba7b61877"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
