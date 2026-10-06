class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.2.0/specnaut-macos-arm64"
      sha256 "1b7d4c456bee1e8c54670ba6a6587b07c7c7ce309a4a61507371a7797863eaba"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.2.0/specnaut-macos-x64"
      sha256 "d60690b668d730ff601d3f0ecfc05878bc1e737735b35ffc5b47089815687e4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.2.0/specnaut-linux-arm64"
      sha256 "cd97a5e3d8aa3c80c6660b207002df8ce956f4563b0096d098239920af23052b"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.2.0/specnaut-linux-x64"
      sha256 "a0eae86bc9bac94dfdff31f80ebc417d2cb5b8d6f87cb18c4dff2e7768df84bf"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
