class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.0/specflow-macos-arm64"
      sha256 "acd580d1b08464dc3f77f97f75d6832092e5433a413db9bfedbbe52ac77083e0"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.0/specflow-macos-x64"
      sha256 "aa51cb9a924c96491ccd8cc221311fb052f8673efdc2962cc37a5508923287f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.0/specflow-linux-arm64"
      sha256 "646c3d4efffbcb71adba8ea6bf3e342f7a9d148c69a5bfffa1c87ee332516d5c"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.0/specflow-linux-x64"
      sha256 "117830f6c79ee38c7da029279590af7e99ff30bb284fffe481f4946060b95b8c"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
