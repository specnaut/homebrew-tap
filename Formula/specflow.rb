class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.2/specflow-macos-arm64"
      sha256 "f452325bb1a7ccf5879814b9c25c6f7c0c6daca8dd36b7fc6c94a1f76fe79794"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.2/specflow-macos-x64"
      sha256 "59f990c8e92dc6d9b2e09d1481846e5aae3c6681b1b6da5c385228ace8697496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.2/specflow-linux-arm64"
      sha256 "402d737476c103775df6dfee79fb56bdd331b2ebee8d2e5963298d627dc63cb5"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.2/specflow-linux-x64"
      sha256 "8d37486386e99db53261460a257fd722aaebc940817c3c6c1b8a4d4c3c2fd1fa"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
