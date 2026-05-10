class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.22/specflow-macos-arm64"
      sha256 "0efc2efa45ee005437dd526f3c0f7fa714b92df3ce259241872823753c5e6083"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.22/specflow-macos-x64"
      sha256 "440e13f004981f86683dc4cf92d8aaae5474e1ffc35c39026dbe46f31343a0e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.22/specflow-linux-arm64"
      sha256 "2496905718aa988ef53707cc76a1331c7e7c863c1e8bc790f66c1de2660d0590"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.22/specflow-linux-x64"
      sha256 "289fa397eedf7a437d272e7d4cf57922539a2b03d785ecbb547a73c9592a0c10"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
