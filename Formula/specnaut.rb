class Specnaut < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specnaut.com"
  version "1.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.1/specnaut-macos-arm64"
      sha256 "cc8f8cfbd96dbb73c0840d083a3af029968d2b3417a79b537e5f9c50d594742e"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.1/specnaut-macos-x64"
      sha256 "658e69feca784ca824a5369c7299dde04ec5807e0c280756464d8b05f8673be5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.1/specnaut-linux-arm64"
      sha256 "93470ae53a2428887d12411d38ec8698d0cc98b5e4d125da64cb9646b772470a"
    end
    on_intel do
      url "https://github.com/specnaut/specnaut-cli/releases/download/v1.16.1/specnaut-linux-x64"
      sha256 "2f8d7193969ceb22d05896fbc5737a0c904c02916204e5a485dbdb2321a47a1c"
    end
  end

  def install
    bin.install Dir["specnaut-*"].first => "specnaut"
  end

  test do
    assert_match(/^specnaut #{version}/, shell_output("#{bin}/specnaut --version"))
  end
end
