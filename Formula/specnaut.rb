class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.1.0/specnaut-macos-arm64"
      sha256 "d68113986203b37c21879d1a7415e670f4e84da2a2d6d9d5ce1364d7ca746cef"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.1.0/specnaut-macos-x64"
      sha256 "ed620ac676fb2d26116cbdadbedf22830791bec265b308aa7acfb2973fdb9d95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.1.0/specnaut-linux-arm64"
      sha256 "001e417a90840147286bb28ade50aa0f66a9f19c93491c71a79bae648e799a6f"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.1.0/specnaut-linux-x64"
      sha256 "0afc57b385e6fd524d0da92580e56ef92fdda8d16a4a48dedde41660872baf14"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
