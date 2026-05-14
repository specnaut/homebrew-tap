class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.7/specflow-macos-arm64"
      sha256 "88da54e3ab2ace5d20e5d148a9fd5e79088e6bd9732c895d45c9e115b3f7500e"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.7/specflow-macos-x64"
      sha256 "44be009899116d01bfd89bf68de50779cad53eaea049ae76d09b4811cc605b91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.7/specflow-linux-arm64"
      sha256 "4211a64af7dcf1d96ab94c45aee92cf5e28855d8e62a9652e6d05838e5a18689"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.2.7/specflow-linux-x64"
      sha256 "f1e074da7947255d271725a10dea3b6d99f2ba3fa74a50a435f0c4a34512ca95"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
