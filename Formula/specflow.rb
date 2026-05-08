class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.1/specflow-macos-arm64"
      sha256 "87e6837279bef63b14d36b943703534cb92869222c60c0de5422ce6cebca73dc"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.1/specflow-macos-x64"
      sha256 "bad7c04e4e85dbc494b3a461b79daa1210a2eb33073e632bedb2788455ea7841"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.1/specflow-linux-arm64"
      sha256 "f2f8ce71418570bc78ba294f1de6d1b6d996990a9be587b5cd4290f28403611b"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.11.1/specflow-linux-x64"
      sha256 "d29a5ca6fdb4c8b0cd8088e5d26b5059a94507b9b12a6bce37ddc2d6e465155b"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
