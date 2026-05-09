class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.3/specflow-macos-arm64"
      sha256 "5b092137c2653929827f24f201b4ad31079b1705e361153f781a72ada6d00604"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.3/specflow-macos-x64"
      sha256 "757af72caab9ceb6932595bc8a912074d1af96e924aa0288239f77f47a80fde6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.3/specflow-linux-arm64"
      sha256 "bb88345dbf107a9e0956fea8635804688220417bf06c1cf0a751f85953ce3b1e"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.3/specflow-linux-x64"
      sha256 "a9d65c8dad6cacee09328c67bb586992713d8bbd697e65ffc2808f16c0a03bed"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
