class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.0/specflow-macos-arm64"
      sha256 "66814cd4585e63326905d98ecc62da83fbdbc48499503bc8a25f067f64f2d1c4"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.0/specflow-macos-x64"
      sha256 "bac4c470026d1614ebeb362a75cd2bb1a592946886c5d31dedab90a6c2685cd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.0/specflow-linux-arm64"
      sha256 "810db3600fa25a0b5c8a15ec3692e4dd8b965d917ff767c2fe67377109d4ee70"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.0/specflow-linux-x64"
      sha256 "e105fd30955d58e95683595c36e3c655da68bff8349ca68515a74d94651196a1"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
