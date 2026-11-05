class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.2/restloop-aarch64-apple-darwin"
      sha256 "0f401c7f7c6cc162aedeaf23a2299afbb3e971a3bf4398adbd34be3dd22720c8"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.2/restloop-x86_64-apple-darwin"
      sha256 "9246749981f6ef9f674965652a728062e114cd3fefb9d30123667db8125ad6bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.2/restloop-aarch64-unknown-linux-musl"
      sha256 "d1e48b725ae1338fa526cab88427c0e08b10ed5b263a83869fec57186772f8ea"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.2/restloop-x86_64-unknown-linux-musl"
      sha256 "fbca9213eafeb0ed8a98d50c599efddc4d39b71070a7008dfaca3e8cdc1a335b"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
