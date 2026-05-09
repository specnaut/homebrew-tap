class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.5/specflow-macos-arm64"
      sha256 "8bfa246df83b3ad5c2498e3a517a460859ea0b03e7a02c9c5cd1192a6c38b307"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.5/specflow-macos-x64"
      sha256 "9cb9527880c17e5a93023a203d0d2e61b368868a68a92b6b3c708a2464fdd10c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.5/specflow-linux-arm64"
      sha256 "29ff6b6fd9e7eee97beadf2a6150177eb946f164ea19ebe0d2b1610cc24bf387"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.5/specflow-linux-x64"
      sha256 "ec17f81ad71a2bb4f76d30f3cbea57c63c0d41c4aae06b11ce1300a07a3ad59c"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
