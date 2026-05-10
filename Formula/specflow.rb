class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.16/specflow-macos-arm64"
      sha256 "c62571461ee9a37bae69f39a7e3418ae7331198ef2120eed24d5436a85a917bf"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.16/specflow-macos-x64"
      sha256 "881175d341fd8892c34c9e4d059f4f5af9313371a3bdb39b074403d96daa5319"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.16/specflow-linux-arm64"
      sha256 "fa623413edf97bb13a87256521fdbe2a07f599c5cdc9d45b4405d08256925026"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.16/specflow-linux-x64"
      sha256 "c3d656fabaf5b94cd464131554757076b978a2ae6e7f6ce1ec4b0fb95dcf4c7b"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
