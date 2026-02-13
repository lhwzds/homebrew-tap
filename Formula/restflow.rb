class Restflow < Formula
  desc "AI assistant that can execute workflows"
  homepage "https://github.com/lhwzds/restflow"
  version "0.2.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-apple-darwin.tar.gz"
      sha256 "ac5c88234d60ea8e55e1107e8aeafaec57f511d543e77c8b5649ebc60c0c7e8e"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-apple-darwin.tar.gz"
      sha256 "b3dcc48769109a8ea6c20e92e1661b778307e5e54bff673cc1bf31d239263485"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa72e24283d4598ad5899de38cbd27242bef5d002cae904ce0226efdd60d223b"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a6e5fcac826245dba41a9ecd8fa28087376f1c1fe94cc73fad9160bbebe153b"
    end
  end

  def install
    bin.install "restflow"
  end

  test do
    assert_match "restflow #{version}", shell_output("#{bin}/restflow --version")
  end
end
