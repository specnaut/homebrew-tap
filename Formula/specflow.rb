class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.3/specflow-macos-arm64"
      sha256 "a26d6b58f08f0a4366e35226af60071a4f7f1971168c39d3b750f5915536a68f"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.3/specflow-macos-x64"
      sha256 "40ba71e6b3ab0094922f0323ff6127e20318fb6e816cfc226e05015f4ac36e4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.3/specflow-linux-arm64"
      sha256 "af95367e8399f1b88bf5dae55ae19db7ff5e249a515ac45d13b8398b01ba8764"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.3/specflow-linux-x64"
      sha256 "1fe3b039aee380de7404f976166906f9dff28b66754297bb0cb73af557140568"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
