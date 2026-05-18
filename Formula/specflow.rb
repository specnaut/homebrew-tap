class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.10.0/specflow-macos-arm64"
      sha256 "4a6a7a97aab3c2e9d88afbd715953aee90d58c68d8bd8c95efc0412860a9cbb6"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.10.0/specflow-macos-x64"
      sha256 "08d5111b550407fba5c9e5f6f9bb83622c9fe1cb829d624f2763b56448c24b97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.10.0/specflow-linux-arm64"
      sha256 "8dc9a31c113bc43a49a58ee0839c80a9f20c22062182e3b2bf802ba8f0ad0954"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.10.0/specflow-linux-x64"
      sha256 "e3ae9aaa052d3317b5fa7444699f62f384b70ec2753b467d6c19a5b78b07792b"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
