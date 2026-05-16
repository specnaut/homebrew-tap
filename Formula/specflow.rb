class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.7.0/specflow-macos-arm64"
      sha256 "7b9589a4fe6cd2bd06f4772102610bf064f3c49789e07b532525b8aa8936902f"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.7.0/specflow-macos-x64"
      sha256 "358c7ba48223a78f254d2c192af5a0c933dfdc0ef3e1d5e84563343cfee3a08d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.7.0/specflow-linux-arm64"
      sha256 "535479d357728b2e4dccbadb42e9fbe8c2675366ed7eccc495e03d94f76101f8"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.7.0/specflow-linux-x64"
      sha256 "1ad097633d732102e7aa4cbd5f29e961f03c5e551c74c85b48d3f6e6e55edc47"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
