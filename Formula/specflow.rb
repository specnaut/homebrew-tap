class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.4/specflow-macos-arm64"
      sha256 "990b7df28fd1854fc220048e19a09a9f029855d27a07dca509926a10c81fe3be"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.4/specflow-macos-x64"
      sha256 "e0e5a500b1edd08298ce89eb678627a63295a949d1fea1d4f40577772590ac3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.4/specflow-linux-arm64"
      sha256 "ccf43b2d3fe3d3dd744c6d47c7e561f17a828a57fb5bacd07bcdb27f309bea13"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.4/specflow-linux-x64"
      sha256 "309e1acfef7321b45206f15fc0d1c8c95e19079e62a6899e9bde0c668a5af0d3"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
