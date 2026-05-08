class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.0.0/specflow-macos-arm64"
      sha256 "ff672de0212bfe24e2325ec8b9e9f1fec02c0c3ee530a52ef34a496d2d1dbf69"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.0.0/specflow-macos-x64"
      sha256 "3f5a996760860827db6d3a6f7afe4a812462747a08f2f9a8bd22a1815b76becf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.0.0/specflow-linux-arm64"
      sha256 "b9bcb12b3382fbf710bf72d2452d25067637fb080f496d932aeb56fa13113ca2"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.0.0/specflow-linux-x64"
      sha256 "7af47c998dc5b2328e6e9b8cd8f3d902772a13a1927405b25d4aa8cec9918213"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
