class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.12.0/specflow-macos-arm64"
      sha256 "cb42ff99a3f8978f258402769cbcbd8357c4ef783750cdc125fb193780e70cf1"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.12.0/specflow-macos-x64"
      sha256 "d5fff26ff8d69636cf4f87585305d7b963bac1d47f53d1c758301a1adca01dda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.12.0/specflow-linux-arm64"
      sha256 "d4f815a173247fb841b446c6cbc401a0db63af9eded57909ba7e529fc686193f"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.12.0/specflow-linux-x64"
      sha256 "5c8ce44b7c1d5db9b8d30fdec30bb92bb4f905b655bc5eef25cd94dbaab7f05b"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
