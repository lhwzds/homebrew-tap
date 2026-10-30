class Codocia < Formula
  desc "Notebook for AI coding agents that compiles source-grounded docs"
  homepage "https://github.com/lhwzds/codocia"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-apple-darwin.tar.gz"
      sha256 "a0ef93fe7ff2decbde053221eb8777c3c986cef7caf0276576fbefa0f1167f87"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-apple-darwin.tar.gz"
      sha256 "2b3ddddd0b9d7035e44424a568719efb1945e84e0f89bac54719bb5a21938450"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f688e31af7dc2666da0957a7a2636d63607f383f71b672f7e39c06c60e42b13"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2320eb9d778e0bcc7ad38ab3d42e1766b2a0abb937cd92f24c5ae3dab1880016"
    end
  end

  def install
    bin.install "codocia"
  end

  test do
    assert_match "Codocia Skill", shell_output("#{bin}/codocia skill")
  end
end
