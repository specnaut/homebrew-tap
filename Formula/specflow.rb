class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.7/specflow-macos-arm64"
      sha256 "9e8daff12b614fb4578f06c3714c3a962c91df9c7ebf13ec363e2d44b214ec98"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.7/specflow-macos-x64"
      sha256 "276c351f83a4ba12157238b9bc8a5699d3c04f59ef1d3ba9c9d201015e97879c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.7/specflow-linux-arm64"
      sha256 "15fa258093127ffc09220f51668d9f0710b7af49732dbf56b25a5c5f1fb52935"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.7/specflow-linux-x64"
      sha256 "d211da9bea956a4c3d5043da7c4606b3f4221c9235cc03938e6c331fd81ee01f"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
