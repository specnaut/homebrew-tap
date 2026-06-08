class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.0/specflow-macos-arm64"
      sha256 "49f3cae0490d970728ad7960e3bdbdeaec41548a0e556ed1ed92da48412c1b98"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.0/specflow-macos-x64"
      sha256 "7fad8237c468611874bae6c8d97d5adb7650f27d9fad6ac222453a45fcfb5c44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.0/specflow-linux-arm64"
      sha256 "d00e9d1d334164910eef04be8a43d84890f4c17ef2b6671c223dc22d67647920"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.0/specflow-linux-x64"
      sha256 "1901775d1498e4343f32167c2807ea642a9fa4fd98859a4014d772b9cef075c8"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
