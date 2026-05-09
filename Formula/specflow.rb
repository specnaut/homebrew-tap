class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.15/specflow-macos-arm64"
      sha256 "a7e289626758e68934ae3dbd63f366fc7972b983a8f1ada80fa17a959e8f5e35"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.15/specflow-macos-x64"
      sha256 "f613474202cb8bc274830e0d91ca21c3b1bc206f10278d7ee7bd679bf5670ed0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.15/specflow-linux-arm64"
      sha256 "385e17bd496ac0fa73a90410a6d7f1d95081608278bb377e8f024123587bf6a4"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.15/specflow-linux-x64"
      sha256 "9b592409cf0267763768f3ac805c7faa9666a348ea6e011d9c03288fe0bb3183"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
