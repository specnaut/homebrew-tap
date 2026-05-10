class Specflow < Formula
  desc "AI project scaffolding CLI with auto-chained workflow, review, and backlog"
  homepage "https://specflow.makerlabs.dev"
  version "1.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.24/specflow-macos-arm64"
      sha256 "918d7fd31740a49f7b37517de359a32a23cf15518353aa6d98d179102d646883"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.24/specflow-macos-x64"
      sha256 "8f2a436b5fdfee7892d552df296278a389f00b249712ba4d4e8680d69a99f326"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.24/specflow-linux-arm64"
      sha256 "2f4b02a1e1f9209b9ac54888b2570cbb96004ced99634df113f1e400e854a289"
    end
    on_intel do
      url "https://github.com/mkrlabs/specflow/releases/download/v1.1.24/specflow-linux-x64"
      sha256 "ef864d57a3a82dc5365efed694bccdb08f4520dd7202dd5956fd70f59761ce9b"
    end
  end

  def install
    bin.install Dir["specflow-*"].first => "specflow"
  end

  test do
    assert_match(/^specflow #{version}/, shell_output("#{bin}/specflow --version"))
  end
end
