class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "5.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.4.0/specnaut-macos-arm64"
      sha256 "e01752d7e6d2727598a5c9fe204de3ac94c574b7e152863b1d1bbdee533dbe07"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.4.0/specnaut-macos-x64"
      sha256 "cf2002fea709139156cb4973754328a4908aac21858eb68967d87789d575e82d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.4.0/specnaut-linux-arm64"
      sha256 "e2196de46a55a3b1235c040520b4099c3f71cd02eb0ba390ea97df3e5f39ba94"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v5.4.0/specnaut-linux-x64"
      sha256 "777ed40e5844d357714bc09908fdbe2a33dfad600070bcf067bab3999f8b9fbc"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
