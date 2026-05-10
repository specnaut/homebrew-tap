class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.23/specflow-macos-arm64"
      sha256 "0e81edde2e41958ea80fb3401e346eaa092825734558be8465a9544262b92a2b"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.23/specflow-macos-x64"
      sha256 "435a1f885f6523f2e30c7ec411d0618ecab931e30d2d5f85556322136fe854e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.23/specflow-linux-arm64"
      sha256 "41f07605a8854c7486b36ceb52045bde79a06c70f99c98fee84eb60f3485f8e4"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.23/specflow-linux-x64"
      sha256 "2d136140d189a7e9512c2e80e6857f9fad0507af8c9464ef54af44104d5823e2"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
