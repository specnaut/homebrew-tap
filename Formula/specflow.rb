class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.1/specflow-macos-arm64"
      sha256 "d6054cd47d1d14a9fde8aa3f2c7c4f5cde9df0b0000ae24ec9c9ed2256b6a5a8"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.1/specflow-macos-x64"
      sha256 "70685cb9fac08cb7be4acb90f60dc9a6996c148113011c70c4c2677741562a98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.1/specflow-linux-arm64"
      sha256 "8ab32c883890570fc57da3b7c2eb44ffb2ea49d07dc468448bfcefc7a3bab880"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.12.1/specflow-linux-x64"
      sha256 "95f36927ef93de6e789e4ebf654af3f671d554223a85af38afec9f5ba6626ef5"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
