class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "9.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.0.0/specnaut-macos-arm64"
      sha256 "ed44fa184d63ac6be79c3e411ab0735f324878cccb73fc6da3a170f35ff4afed"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.0.0/specnaut-macos-x64"
      sha256 "42f935a8837478e4d3eb4003e67f15993d5561b54f8cc88de1a34db3e278cccf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.0.0/specnaut-linux-arm64"
      sha256 "e23c58f16b14f451371e4d4aa1aa8ee7e205ba92a266441930681a03021feca4"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v9.0.0/specnaut-linux-x64"
      sha256 "3716bcab6c8b9475d6626ee30191b2040008d1053ef62bb851f67f6a7a683647"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
