class Ccswitch < Formula
  desc "Claude Code profile switcher"
  homepage "https://github.com/hota1024/ccswitch"
  url "https://github.com/hota1024/ccswitch/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "25ddd997c050e2d73b4a746c4545c2fd354e9b0e42b292b9a73b46b65b5c7006"

  depends_on "rust" => :build

  def install
    bin.install "ccswitch"
    system "cargo", "install", "--root", prefix, "--path", "."
  end
end
