class Codocia < Formula
  desc "Documentation drift checker for AI coding agents"
  homepage "https://github.com/lhwzds/codocia"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-apple-darwin.tar.gz"
      sha256 "a9f3468cf51567058f09475c845b3e52fa7bca5a792d1879f9aeb51cbb7eae79"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-apple-darwin.tar.gz"
      sha256 "31ba025ca5be34c7105fe9f3de8227a116752ec5d420cf36cb41fa04b7bcea4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33e313e274b51f7fc57b99e5c36df4c6188ce8f5fa19f0e2b934802c86ecb0fd"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7929ada1565b4f28a2463f8c1dc89e4dae02a121640c1c2febc5943ac58f0ce8"
    end
  end

  def install
    bin.install "codocia"
  end

  test do
    assert_match "Codocia Docs Skill", shell_output("#{bin}/codocia skill")
  end
end
