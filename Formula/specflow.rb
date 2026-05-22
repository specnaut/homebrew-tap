class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.1/specflow-macos-arm64"
      sha256 "069544f1417565c79945937fbe74a54b9ea98aa72687b7d6ef573c0afe9addc6"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.1/specflow-macos-x64"
      sha256 "d3a9f2661cd26f82ae95350f5ffc3052ccf5cb70afc0210dae5d33dd296543b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.1/specflow-linux-arm64"
      sha256 "18497ebf2a38364171594f79b695235f849de7a13e6cc7e44bd9de510d1ce985"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.1/specflow-linux-x64"
      sha256 "70ddab7e3d25579eb75d9f06402d7ef4775b71b133f8fe1d2ee8845c05c1b7f1"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
