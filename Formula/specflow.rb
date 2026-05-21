class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.0/specflow-macos-arm64"
      sha256 "63fb99f68f4c23a9cdf01c0d4d7ca74e08313760222cbe8aa1de7f9c3f7da3b2"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.0/specflow-macos-x64"
      sha256 "071a38dd4d025a1bf9b7a426d368514e130ad16d276b9c4f6062fd62e846b6bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.0/specflow-linux-arm64"
      sha256 "0db6a09f90c6092a1a8157978a36ff42a9734add2c24bbe8ba859be2f389fe1e"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.11.0/specflow-linux-x64"
      sha256 "058b251307e304ee13b0512f086ceafae4378e9ad8cdb08787e59b53999dc1a1"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
