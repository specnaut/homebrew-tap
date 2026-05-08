class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.10.0/specflow-macos-arm64"
      sha256 "8b393b050a378834270d163741956f9bfe0a06e9647062ab692844c89b740cd1"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.10.0/specflow-macos-x64"
      sha256 "5cba2af8971250d5edb6feccf1ba76fc35071e0a9da9b5e010010503fadbdca0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.10.0/specflow-linux-arm64"
      sha256 "2e5c9f6743cd48a796115964c94cfc3efc4a7486804d4dfead578a74b4972fd2"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.10.0/specflow-linux-x64"
      sha256 "b7cc983c8eaea28e65e7df073027e8a1c17134cbc5fbf0ded59690c91820c2d5"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
