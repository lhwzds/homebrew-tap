class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.6.0/restloop-aarch64-apple-darwin"
      sha256 "294541037c331dbc7334a8388b421cfc313dcb132a89594d8802a6e4753c9035"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.6.0/restloop-x86_64-apple-darwin"
      sha256 "f454880292d8dc90b28eca19ce65a0d4d1f39e5bf9282e0b2dae0340aafe85f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.6.0/restloop-aarch64-unknown-linux-musl"
      sha256 "10fca20f99e560a4f60c49c2a2ca360c222ad8b763bbec7dd1c8dba1f933de49"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.6.0/restloop-x86_64-unknown-linux-musl"
      sha256 "85a28454aee72c53225200b1f4c6323c018aa23bc90ba491a57bc205127b6616"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
