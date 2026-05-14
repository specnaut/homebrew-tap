class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.8/specflow-macos-arm64"
      sha256 "0fe2380bfd3de9ae923328c4b5e2350a3db5838c9cfafbd90c1c3e5e2eb0a420"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.8/specflow-macos-x64"
      sha256 "d8f2abc54d1f9c9d75c5b070865d92d1bda814ff3b21fef40a6c49769a5ebe7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.8/specflow-linux-arm64"
      sha256 "676920dd9765fd5be3e43c96e5c001d729e62974c68cb1b352b1c8b1c76f719c"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.8/specflow-linux-x64"
      sha256 "48bcbcd92e1390dca7d4ad2651167a82fdd645041efd7dc431d72c35d2dce71c"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
