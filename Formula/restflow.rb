class Restflow < Formula
  desc "AI assistant that can execute workflows"
  homepage "https://github.com/lhwzds/restflow"
  version "0.3.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-apple-darwin.tar.gz"
      sha256 "6c2a06e76a4c617f54cf3b7b652c600d66e4634dfcfe875db32f7d64917b9d1a"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-apple-darwin.tar.gz"
      sha256 "0449c6d4ce9f40a115c144ff596a22c5313c3da9c30d6081df73fcd624d4b337"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "297f2d7aeaebbf66cdf1fab51353b3eb57b9ffc659f84b607eb744a78de2b589"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6e15c31534706834171bc3ee9aba0719c6361abef13ace6657d24a97c864465"
    end
  end

  def install
    bin.install "restflow"
  end

  test do
    assert_match "restflow #{version}", shell_output("#{bin}/restflow --version")
  end
end
