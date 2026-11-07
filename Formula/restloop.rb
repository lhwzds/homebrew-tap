class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.5.0/restloop-aarch64-apple-darwin"
      sha256 "66336587e703e4a6e10371bb889bab9cad5f8e81be97aa58d000042b6ccc59a3"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.5.0/restloop-x86_64-apple-darwin"
      sha256 "ce18efcccad329d8f994b61e4262d64e60f2495ad27b6271f796f8ef79556086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.5.0/restloop-aarch64-unknown-linux-musl"
      sha256 "ae482459560a18118b7f0a79f2c2b812c636609fbe9e1ce090c0305d617e1339"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.5.0/restloop-x86_64-unknown-linux-musl"
      sha256 "50609f2e511bfb22a4be4ee47ba714356e8e4b4ddcffd9fa028303e50e11c43e"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
