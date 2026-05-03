class Restflow < Formula
  desc "AI assistant that can execute workflows"
  homepage "https://github.com/lhwzds/restflow"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-apple-darwin.tar.gz"
      sha256 "31a1a667384a095ba0db49034c322d622ffde43540d85226785f0f36eaed50ec"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-apple-darwin.tar.gz"
      sha256 "ff7a33fdb2f28ec736bd8ba3bc97824810657b4f89aee7fd21857212e809f76e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8583aa2616719992d1715939d397120115b34dc13647145fff9e50b9395eef8b"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c84e017f882027c3fba9e03fec955587b61c6fc94c1aaa822b06f0e69963f4ba"
    end
  end

  def install
    bin.install "restflow"
  end

  test do
    assert_match "restflow #{version}", shell_output("#{bin}/restflow --version")
  end
end
