class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.1/specflow-macos-arm64"
      sha256 "c5126c3ebc4ae4f3e17cef1b34e1945c646d4e75daa113bf3a3d0a4e9b25b3f6"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.1/specflow-macos-x64"
      sha256 "63d70eebf49c7937da3f9b1bba21474b3deaf38fb4b08ad3ad23a1c6499c0462"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.1/specflow-linux-arm64"
      sha256 "37941d798ab3ce58e5c182b9c3bb14914e191dfbd4ed4d9bbb3327410e0a47f8"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.1/specflow-linux-x64"
      sha256 "3f30b248a2f5fbc3e242d200a5b843662813e26aabed7b22575c0c79036f1993"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
