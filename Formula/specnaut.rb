class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.1/specnaut-macos-arm64"
      sha256 "53ddc9c13dc30b55e4e30a8e55311b4fdc6cc691458e2e428f82405e3f3c7c32"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.1/specnaut-macos-x64"
      sha256 "5d312c3b4bca6d64b1ad98a57cbfae5a10e365da0b438105f089eec81cab461f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.1/specnaut-linux-arm64"
      sha256 "6b4ecbf41c8521c6bd760e158ddf33f11a4e899cd8a3f4a709c9bb9f14bde829"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.3.1/specnaut-linux-x64"
      sha256 "2595d00ae2625f6a56ae57df67c43064290dca30cde3438d590aeaa1f5f2bd24"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
