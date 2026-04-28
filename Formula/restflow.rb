class Restflow < Formula
  desc "AI assistant that can execute workflows"
  homepage "https://github.com/lhwzds/restflow"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-apple-darwin.tar.gz"
      sha256 "9286b56eecde79080c24c5ced06e38c3b153b09007f8b5b191dc4366e78e574a"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-apple-darwin.tar.gz"
      sha256 "2b3f3b9b6244c8dd0edeaae23bf60312bf78d0f24fbb4ac494162758666b4ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "40b07395e44457f70ed412056f0b16125cda120050dd48e593647bc0fc0e7cbc"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbb5d19f97ea4768e7ba611ccf22826e85e3eaa294dd802d5770291b289bb0d7"
    end
  end

  def install
    bin.install "restflow"
  end

  test do
    assert_match "restflow #{version}", shell_output("#{bin}/restflow --version")
  end
end
