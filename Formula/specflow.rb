class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.21/specflow-macos-arm64"
      sha256 "e07d94ad42959aee215e1b8cb338da587f48f98fe0f3722499e0f493d79603d7"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.21/specflow-macos-x64"
      sha256 "f77c0975ec4f450bc94d1347c036e6401242de29e1fcf3630e5b097b11ca7329"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.21/specflow-linux-arm64"
      sha256 "735e4d1edcfa3c09fb31bec630a1c8b090822df18b59317f2687ca2a0b9d5c72"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.21/specflow-linux-x64"
      sha256 "841d768a43e6ec3d01d3e58de83a9b22293de55062d3097a163b4b8e54b94521"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
