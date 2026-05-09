class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.9/specflow-macos-arm64"
      sha256 "2f7d2370639dcc53257e570e89d050d62b4cf710bbcb5be2a0e601ee6504b8ab"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.9/specflow-macos-x64"
      sha256 "ebd35d0593a9a2596d93764fc12aa9ca5cea53626ec516cd6f2067934b91a144"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.9/specflow-linux-arm64"
      sha256 "8c84e43b6292ef939b41e6ecb9f7c786665c759c4757136349c988bfff0b1a10"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.9/specflow-linux-x64"
      sha256 "87bb052a1f609dbeb4fb5f23d6f3244f83cda0e3428e077eca8125d75deccfd2"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
