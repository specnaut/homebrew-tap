class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.9.0/specflow-macos-arm64"
      sha256 "2cc152064339bb90b6e4f11710512db8d9b8c7d8bbca24914b8d185bea5a6f04"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.9.0/specflow-macos-x64"
      sha256 "35ada231edebd99833198ad0b9d1a711c46b5c63757b6001251d5a5fd70731ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.9.0/specflow-linux-arm64"
      sha256 "a2f9e39c22b1868e66ea977c59550d24eeb85419941798e400b4123a2ae692ac"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.9.0/specflow-linux-x64"
      sha256 "465edbd6b3cb3033362481662f7de1fe8e9a861cb36b6e11c3cea62a496c2e1f"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
