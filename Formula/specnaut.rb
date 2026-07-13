class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.0/specnaut-macos-arm64"
      sha256 "416bf2ed748c4d2eab588fe80f6daa38ca59972fe17eed310cdc9e31cbab775a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.0/specnaut-macos-x64"
      sha256 "58c153d8adbcd814e4db9eefb31c89fe5a5041eedc759fa2905a35f9636438b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.0/specnaut-linux-arm64"
      sha256 "e841c1f0158b091b927ae91ad78a4b46390935ba5a71bb4064cce5fe80c9e5c7"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.0/specnaut-linux-x64"
      sha256 "df36cc43e027f6b914c2b7f41b9b66d400a1df58bde404fde21118e42626c948"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
