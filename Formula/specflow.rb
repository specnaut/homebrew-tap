class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.13.0/specflow-macos-arm64"
      sha256 "bd04afbd4cece090a0716602a68a7e15564e92ae7ef48438dc967348a73bd034"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.13.0/specflow-macos-x64"
      sha256 "3f6dddc3ac684dec63e4d2b6403bed38d8f85a7d5aa1aac78f6c92ed35bb9073"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.13.0/specflow-linux-arm64"
      sha256 "46a4c153aa1090777f6985be0e6b1a1e72f41f6f73fa77032270a1d3fcfe88b8"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.13.0/specflow-linux-x64"
      sha256 "482bafb5df2c628809250df6ed586da4d15e12e3dc843365af4297b7bf086295"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
