class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chain, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.14.0/specflow-macos-arm64"
      sha256 "34db1e928c25b29aafa06e7eef8e46ece910c931e9864718da77c4d60b7c2d4a"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.14.0/specflow-macos-x64"
      sha256 "d5fd564dfa50be1f488faa69f42eaf48a080d88e8e57fc39982962960d152077"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.14.0/specflow-linux-arm64"
      sha256 "e1ef754c1bcecf96f962188f79440efc7e9211a7ece9247ba86be788050b75d2"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v0.14.0/specflow-linux-x64"
      sha256 "ae9f25db02e6c1c72e547b678d1b22dd15b30a2875406f491fe39cd9cd596b36"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
