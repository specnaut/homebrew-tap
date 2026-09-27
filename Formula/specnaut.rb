class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.1/specnaut-macos-arm64"
      sha256 "a3108753addc49ba09f4ff03f9f5146e7524a22abb434ea886779dcfe073f41e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.1/specnaut-macos-x64"
      sha256 "7bb5d93d2527ba065c3524778894073e1808f71aa16b27a996636ea10c7953b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.1/specnaut-linux-arm64"
      sha256 "da7d5695186bbba65c2ef04d86473517e504fae890a3ef18604a390bc3cbca21"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.1/specnaut-linux-x64"
      sha256 "d94f65e410a07c42e12693fa77062b8e78b3b4ff8ae9493f20723fa96382c137"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
