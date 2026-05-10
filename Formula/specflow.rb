class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.20/specflow-macos-arm64"
      sha256 "fe47457735a239edf3c93c7aa9721a01da3f3fe69e51f2763838962e428a1d39"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.20/specflow-macos-x64"
      sha256 "960f29a8886557398aec8ebf578bf9a787d4e3b3712d4c9e64b36058bfc94ce0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.20/specflow-linux-arm64"
      sha256 "c2e2a39aab719bb371762e0125ddcf5e9a9b0f54a1800bacc617fdd0009c7340"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.20/specflow-linux-x64"
      sha256 "4303f965ac4d9b8da9b06cb5128950bf856adc7fa390f728ee82ce5af5171614"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
