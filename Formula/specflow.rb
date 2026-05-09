class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.11/specflow-macos-arm64"
      sha256 "b968f8669299630e7aa4e314ce4b65723125c0280866174d67a01a884f48d426"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.11/specflow-macos-x64"
      sha256 "4336a8a6cec984461e1997a7276af3c0ea8781284a55b3933fd4d016cc7f9f7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.11/specflow-linux-arm64"
      sha256 "360ec298b1eec316322b5c1350194ccd6897ad34224b0070311e142a38c27b58"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.11/specflow-linux-x64"
      sha256 "0a82c53ea0e4ff97ecf758bf45239972f6d27a667dbc9d8c663eff287fc72cf3"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
