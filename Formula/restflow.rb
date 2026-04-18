class Restflow < Formula
  desc "AI assistant that can execute workflows"
  homepage "https://github.com/lhwzds/restflow"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-apple-darwin.tar.gz"
      sha256 "9417cb61271cf9081bda3e36060ace1ce371b81b818f2e0c6ad71cdff9ff307f"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-apple-darwin.tar.gz"
      sha256 "358465366f3e3111e248ad25f1ba6a10685c8b312bd870628e8bb428a783e667"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eecdeaa4025015bfb5f28a2e7c65321cf3f2b14c5855d5699da26c57dc1946ef"
    else
      url "https://github.com/lhwzds/restflow/releases/download/cli-v#{version}/restflow-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf496f88a2f1b4b55c9a6f95caf938eb562dac393b3a61d1efbbe72c693dc47c"
    end
  end

  def install
    bin.install "restflow"
  end

  test do
    assert_match "restflow #{version}", shell_output("#{bin}/restflow --version")
  end
end
