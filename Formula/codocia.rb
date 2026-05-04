class Codocia < Formula
  desc "Documentation drift checker for AI coding agents"
  homepage "https://github.com/lhwzds/codocia"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-apple-darwin.tar.gz"
      sha256 "589b04f5bbb7e62bccb2dc7472c8122a8e0ed04a2ce559dc67ccbcf79db98799"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-apple-darwin.tar.gz"
      sha256 "1691e19398b07e706d3dafd54f1a650f06a4d27826a8cee07d6a1e1daf6a5ee1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9ee6fb2898dfdea90598bcf0ca92bc459d467ab2ddd128e475df592cf632d6b"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe937a0977f2753ffbac642718cd2a3f10a721e2531401b7859aaa519cd3d51a"
    end
  end

  def install
    bin.install "codocia"
  end

  test do
    assert_match "Codocia Docs Skill", shell_output("#{bin}/codocia skill")
  end
end
