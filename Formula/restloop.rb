class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.1/restloop-aarch64-apple-darwin"
      sha256 "d7ee8139ddaefd28b326ca824a9d636bf8f468033f75f892eadd9676f0992276"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.1/restloop-x86_64-apple-darwin"
      sha256 "b87c5597534a9edd65bbcebefeca460742060365bec62192156211a4a0517444"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.1/restloop-aarch64-unknown-linux-musl"
      sha256 "13ea7e91b913547ef6b7334551c5c3a0a4538b635e416827c1dfe36053211271"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.3.1/restloop-x86_64-unknown-linux-musl"
      sha256 "267c510a90c556854de4855aa92260462c0bea2e9997d1b51dd36f260be334e2"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
