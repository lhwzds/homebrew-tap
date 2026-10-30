class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.2.0/restloop-aarch64-apple-darwin"
      sha256 "d04c576806df6eaf9c2867a5cfd4d923746767e7d2dfb5cfa92699e57f134838"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.2.0/restloop-x86_64-apple-darwin"
      sha256 "a8cc4353c2c57ca003bb45b250a7578154be02f9c9dbc6320ef4f42a578cac12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.2.0/restloop-aarch64-unknown-linux-musl"
      sha256 "6257113337219bb721b84c76fe2848134eb9ace77ab0bbac206de5eb54720e1b"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.2.0/restloop-x86_64-unknown-linux-musl"
      sha256 "58db49336270c07ec4f741efb2df501fed45224a2a39faabc03821a5ea8c8d17"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
