class Codocia < Formula
  desc "Notebook for AI coding agents that compiles source-grounded docs"
  homepage "https://github.com/lhwzds/codocia"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-apple-darwin.tar.gz"
      sha256 "7591d58d8eda7ad7d3e64af5dd90d3c4b58f65c0ae6546bab15ed75ab6de9cc6"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-apple-darwin.tar.gz"
      sha256 "23c07bc6d980c5490db69d6e46b60d680f1d5405724cac7556f427a5afb4d196"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f2b2704ff22dea53119c2f6ecd2b84b46ac2ddd09a85da4bea3ffe3d6e2bde04"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f52202398b7ea02f12cc8a9474e7b9dffc3d565c7624b10dcdaea4a043c6401"
    end
  end

  def install
    bin.install "codocia"
  end

  test do
    assert_match "Codocia Skill", shell_output("#{bin}/codocia skill")
  end
end
