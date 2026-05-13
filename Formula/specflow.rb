class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.5/specflow-macos-arm64"
      sha256 "56c92c46d321c34177097c9e31320d71e64e4ecfc81f4f2dc382dcbad8e59cb0"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.5/specflow-macos-x64"
      sha256 "df0cac02d06c32d1fcf265dc971f9e5663b88e093ec561adef89bd2495986ac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.5/specflow-linux-arm64"
      sha256 "5d070ac09d8c42e9945c1e8dc0c5d4adbe14e6bc3228f172415b2b279a8d6be2"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.5/specflow-linux-x64"
      sha256 "46bff76b6ff4b1af06e90a981db0719914728cb85fbfee82282300a5305f3d7e"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
