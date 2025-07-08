class Ccswitch < Formula
  desc "Claude Code profile switcher"
  homepage "https://github.com/hota1024/ccswitch"
  url "https://github.com/hota1024/ccswitch/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "c3f5c337e976833365ed2374abae87eb62e7b39a7a421af071b585777de30a15"

  depends_on "rust" => :build

  def install
    bin.install "ccswitch"
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
