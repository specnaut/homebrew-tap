class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.17/specflow-macos-arm64"
      sha256 "7b3b00e719ae41565a376900ec4f87a568267e8f54cf07a5afd9ac092b9efd36"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.17/specflow-macos-x64"
      sha256 "edec2f44c61983e8022f1db30241a7117e255e6d50de16f9385b0f9394844c2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.17/specflow-linux-arm64"
      sha256 "c428c41f1d9f75f17e481467c2e510753277c912ced657b4859d92d941cc4ce4"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.17/specflow-linux-x64"
      sha256 "d7b8a5b4bac6210755472ea7c430258696f7cc9eded6492f8227f4f2d2cc57b1"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
