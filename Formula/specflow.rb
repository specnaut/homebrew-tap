class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.0/specflow-macos-arm64"
      sha256 "d5a768ec4b2fa392fe7f8809304cd2ff34a4d0d5711c0d291c0f7ff6023d90bb"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.0/specflow-macos-x64"
      sha256 "f1a6597e48b656214d2660c1aeba49b440ba32fae550d0090e74fdfb8abd2d70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.0/specflow-linux-arm64"
      sha256 "f90ffd1d1aa73d2dda6b044a6d2f211a57c855c40a42b56bb03d136ebfba45c8"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.0/specflow-linux-x64"
      sha256 "1dac026785cbe60315dd8c93904517e2ea04afec777f76b10a8967ad6f6554be"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
