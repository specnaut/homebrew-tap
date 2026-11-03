class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "8.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.0/specnaut-macos-arm64"
      sha256 "b34956ec5b4fb833acae95337e6cf18cc6cf5144cd0606f9bef66ff5cfc3b75d"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.0/specnaut-macos-x64"
      sha256 "088d5182e9199e34284f9a21da0c84fb70127be71f5c641f08ec4fcbbfe63c90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.0/specnaut-linux-arm64"
      sha256 "3ad6a7a76851e1397dda5e2d133585a528a5a840c30138a0755c59f31ce1597d"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v8.0.0/specnaut-linux-x64"
      sha256 "5276f983de2da4d1082497f4dec62ef46e9d280c98025a61d8816224193ead84"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
