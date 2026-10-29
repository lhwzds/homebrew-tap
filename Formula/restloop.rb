class Restloop < Formula
  desc "Minimal coding-agent loop: it keeps working on your task so you can rest"
  homepage "https://github.com/lhwzds/restloop"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lhwzds/restloop/releases/download/v0.1.0/restloop-aarch64-apple-darwin"
      sha256 "c02d35077979e9cbef281929939fde3c921bc1b2b9e7b551e423fbf2f593544d"
    end
    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.1.0/restloop-x86_64-apple-darwin"
      sha256 "d096b991173eb97b76cb5e4586c18103f279e4f4fd2a899a457573c312bef763"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/lhwzds/restloop/releases/download/v0.1.0/restloop-x86_64-unknown-linux-musl"
      sha256 "a987f3507c8a8e4b7a6e0faaacdbc81cd8f457ac77d484934548d3fd1b389d17"
    end
  end

  def install
    bin.install Dir["restloop-*"].first => "restloop"
  end

  test do
    assert_match "usage: restloop", shell_output("#{bin}/restloop --help")
  end
end
