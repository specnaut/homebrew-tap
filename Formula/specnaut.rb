class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "4.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.0/specnaut-macos-arm64"
      sha256 "9c19b307019373afe03e73bd24e45237347137200698730dfb0361cb5c4355be"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.0/specnaut-macos-x64"
      sha256 "6413cddf51e028524f56680cce8b6790027ada5aad2aa89257505ae425470636"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.0/specnaut-linux-arm64"
      sha256 "c6c1031b169d39509df24a958b46ea87f994b913ce54b112311157896e972197"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v4.5.0/specnaut-linux-x64"
      sha256 "c08cf2444d9f0b2756311667b4a9dcb540b1282cfe75beedec42642f8dd34894"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
