class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.0/specnaut-macos-arm64"
      sha256 "4abd0d763880f5285c969d5e73f9281642b97f05415c2a0329ec0f04c0762b26"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.0/specnaut-macos-x64"
      sha256 "137d7e4708ac4b3a38588652ec8d04c753eef77d58fbe5da586d79e41d4b471f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.0/specnaut-linux-arm64"
      sha256 "49b71809092489485cc12947a163a96b78fb3e403f7e2ea9fa48c7490da48e4e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.14.0/specnaut-linux-x64"
      sha256 "74ccffacc2d2f09479355171ed65474374292ef6df2da83fb22638c23405917f"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
