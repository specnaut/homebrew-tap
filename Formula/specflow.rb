class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.6.0/specflow-macos-arm64"
      sha256 "df8cfdd97b08205e1652040f2ac7e527fc1093724e71a91ffd750cadf3d23149"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.6.0/specflow-macos-x64"
      sha256 "067b7529c5ab6ab3b1c85f84f89d3d79d61c8feafa3ecb5bbb29173bf972a18b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.6.0/specflow-linux-arm64"
      sha256 "67b12f14a4471ff8fba53ddb9ae41474ac40257b4be574d6c8e49a5dbf490415"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.6.0/specflow-linux-x64"
      sha256 "00d4a80741fda4c7ed352df7054d559e791656c4657fe29c89748e56dfb2232c"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
