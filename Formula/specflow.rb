class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.5.0/specflow-macos-arm64"
      sha256 "facaa9e56e6dad520b7a886f561ba1ea31b2df4de08d2aab74b8fb347f6ca442"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.5.0/specflow-macos-x64"
      sha256 "c303837aa9b6506f0a329a3602e23af74564dfc89f27c0c14799d07b5064e134"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.5.0/specflow-linux-arm64"
      sha256 "2b3cf522aeba0a354a23ec68f626d5a0cfbfc7fafaf23ec2e77b2c0aac54b7ad"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.5.0/specflow-linux-x64"
      sha256 "bdd88a14e366c889d69162a8e9bf4359309c57dc22d0d86c6be5b673d0c2ca78"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
