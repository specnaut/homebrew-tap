class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.1/specflow-macos-arm64"
      sha256 "b0d1aa00b491c684c9353686a3da65ad64a723994d5172e6c48430de5a2ac459"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.1/specflow-macos-x64"
      sha256 "4ce40b656bd495e5190b3096e328400e0a2a82b547b13f06c9cbac56bfe861ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.1/specflow-linux-arm64"
      sha256 "0f295fa7a0100977fb25d2d16091bfbe4969e8e199269055880e2eef8447fb72"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.1/specflow-linux-x64"
      sha256 "98c93afc7e5010663ed4f290d9aad828aa3fbc79d171428051a8bbdba6aac14e"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
