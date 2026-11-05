class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.4.0/restloop-aarch64-apple-darwin"
      sha256 "dd3f577c6b91c0489a74d8bd8bad11f295f9b65583f937c3edf238e0ad37f8e2"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.4.0/restloop-x86_64-apple-darwin"
      sha256 "b6316dbc75fbdeff123fb406de178c9c7977e877dcf8e7bb4cf6e5e77b19add4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.4.0/restloop-aarch64-unknown-linux-musl"
      sha256 "69054774c517f23ef8c04f68e535f425dffdbc8e2e2225dc30fc15abf4f04e46"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.4.0/restloop-x86_64-unknown-linux-musl"
      sha256 "25c2dcce79a15a90c15c4a0d7d830c209d1f2986992aa187f174573b8b32d070"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
