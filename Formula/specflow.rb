class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.2/specflow-macos-arm64"
      sha256 "d65b16e7b4e93f889c1f3704c030d3655f3f0f21a73d313a20b5d9a71c118b17"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.2/specflow-macos-x64"
      sha256 "72b2369d9b1b2c71149a5346ffa843147eca9e88336085935ed0f91ecbde196d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.2/specflow-linux-arm64"
      sha256 "586eb52ac12dff7517de5b0e7b8cf26957aba30a0a32d8b87c67708e56a959cf"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.2/specflow-linux-x64"
      sha256 "1c5ff2a234aec739c1370dea430ad67ba9f94a0921eb7f989deba34b1b1fbc46"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
