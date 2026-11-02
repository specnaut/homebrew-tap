class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "7.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.4.0/specnaut-macos-arm64"
      sha256 "2a55421a7886a71d203fa63b851d29b71084b8bf3760148e63865c9679be9622"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.4.0/specnaut-macos-x64"
      sha256 "b2e89dcb8e674d5547a4ecc99b054593e72ac5c58036bd609db80f22afa7003c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.4.0/specnaut-linux-arm64"
      sha256 "3ade9b1170ed4630491a16744ce59168582cbdcaf4836e5e30cb9cd429c589b6"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v7.4.0/specnaut-linux-x64"
      sha256 "6a227fa31620a550e6a1e64e0ed438b8206686811f819e6dbcac32369885d244"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
