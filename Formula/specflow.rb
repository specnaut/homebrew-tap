class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.18/specflow-macos-arm64"
      sha256 "ab25b0d7a3051a95a9d6c6be5374f200fe45d95417493a474a5f8bbfb7313948"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.18/specflow-macos-x64"
      sha256 "cfb6a92d6ce5eef0d88d394feffdffe03b5b5508a4c8ece59b2a7071c2b4f1e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.18/specflow-linux-arm64"
      sha256 "7bc052ca16d1e459343c92fb4947bcb0e0078bdb60039f55c993f80ebf2ecf01"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.18/specflow-linux-x64"
      sha256 "6ef7f82aee7d667ec042823b1899d1e84ff22abca5a804212d56542f097bebe7"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
