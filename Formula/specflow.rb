class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.1/specflow-macos-arm64"
      sha256 "f61fca2934d063501f34f3bce9714faf5e862881d55c04a0e3d719f42597354a"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.1/specflow-macos-x64"
      sha256 "5be86c8086deaac7241dcb33a4c09390593bb48d660ff51ba00439c729f18558"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.1/specflow-linux-arm64"
      sha256 "5da0fb969be2142d4db2a96e98f2651dfe80507755dbaad01728fe288da9eba4"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.13.1/specflow-linux-x64"
      sha256 "f943701ca799151379e5144cc50db0fbbd2a464ecaa45e0fd595c9979a998a1c"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
