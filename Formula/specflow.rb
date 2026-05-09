class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.12/specflow-macos-arm64"
      sha256 "0caf842c6885ad7cd96de7a40a55fa16eefef652ffb30e441211eb6fedc1b34c"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.12/specflow-macos-x64"
      sha256 "2de59bad47be779c7cb7848676f1d2241edb175acfcafa8d4e593667ddb01237"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.12/specflow-linux-arm64"
      sha256 "8570423eab44173a7387fc329233c4f5ed332e3a8c72eb1588c9f0fd76a3101f"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.12/specflow-linux-x64"
      sha256 "f23ee27f9cb5563d1207ccd17e637c955440d84e59680c75b4d55305da7f0275"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
