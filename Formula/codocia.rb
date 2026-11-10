class Codocia < Formula
  desc "Notebook for AI coding agents that compiles source-grounded docs"
  homepage "https://github.com/lhwzds/codocia"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-apple-darwin.tar.gz"
      sha256 "71e71b43328cb508458f7540d0479bb16db5ece678c82ce882df180af2098c05"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-apple-darwin.tar.gz"
      sha256 "95bbe2567e4952c7a33fc4a752cae6906e7700f3c88b69e6327df0602f03b73b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a6fe47292dee5ba53569cdf6b06f22d864593b52d1055b9f721afbdb8173864"
    else
      url "https://github.com/lhwzds/codocia/releases/download/v#{version}/codocia-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae0bc664a76bed60c11ef8ea01355c37f7a114802bb3c93c389a7d4ca6e521be"
    end
  end

  def install
    bin.install "codocia"
  end

  test do
    assert_match "Codocia Skill", shell_output("#{bin}/codocia skill")
  end
end
