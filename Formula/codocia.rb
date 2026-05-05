class Codocia < Formula
  desc "Documentation drift checker for AI coding agents"
  homepage "https://github.com/lhwzds/codocia"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-apple-darwin.tar.gz"
      sha256 "f3d07c94fedbfe636af4a87e7e9dfa5f550047a584952dd61aa4bdd0113e720e"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-apple-darwin.tar.gz"
      sha256 "3f7bb843bfd0c0b3d5fb5e3d1117c6c9c1fb014016d3932e33533e3520efae7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c13cacf48192ccead5fe527ec619af45488740829719ae275b9081fe6e5e644"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a7d608b75687cc2e233e508c4ed55b367cb0eb1d62010c5f4ebbd689829b40f"
    end
  end

  def install
    bin.install "codocia"
  end

  test do
    assert_match "Codocia Docs Skill", shell_output("#{bin}/codocia skill")
  end
end
