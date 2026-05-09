class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.13/specflow-macos-arm64"
      sha256 "a30429941ddd460e7167301877e381d89534e7f50e032ed55c24a51dfd4c92e4"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.13/specflow-macos-x64"
      sha256 "603bab7989a4d5fac820046792a870c3374eff58afde046080ad5399bb257498"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.13/specflow-linux-arm64"
      sha256 "fb706bbad5bc8c7c67f858e292975c0e4d67d99537ce5a74911eba4e835169fb"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.13/specflow-linux-x64"
      sha256 "c9c7cd1076c3c0b7c29aebe68d26b0b156f0f319df93361f6971415560083b4d"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
