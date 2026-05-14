class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.0/specflow-macos-arm64"
      sha256 "4b4421fe144cadb72ee8eabb1cd46aea163e792dfd291b78f29785503710abf4"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.0/specflow-macos-x64"
      sha256 "4dad9d6f16a542f6727197f2f532b396a784dd603d957ced32a44ad3970e4cab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.0/specflow-linux-arm64"
      sha256 "7c6eb3a6ce9e211d993563348c62a761bf7089acc7bdd6330d4b0305fe1fad20"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.3.0/specflow-linux-x64"
      sha256 "7ce7b5e65e1bc93107c5f5d2de01488e016ff07441b5031ca34c52d5856227a3"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
