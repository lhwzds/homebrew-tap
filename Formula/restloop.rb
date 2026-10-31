class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.0/restloop-aarch64-apple-darwin"
      sha256 "b716078da646fd691dd455eb2ca0151178479b1d035dd51ae47430f7622adc0c"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.0/restloop-x86_64-apple-darwin"
      sha256 "530981e786c93f22423d7bea2df624cda5ba5cdaf49a80662bde62a8d5fe1e4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.0/restloop-aarch64-unknown-linux-musl"
      sha256 "b072f04f60f86ddf8f033b87683d2fc103193a4069db19209b2560f5d33645e0"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.0/restloop-x86_64-unknown-linux-musl"
      sha256 "dd0a26b3151d2ebce888402609d24b0343f41d6574226668950e25e790b3fcfa"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
