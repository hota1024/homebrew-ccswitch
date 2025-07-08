class Ccswitch < Formula
  desc "Claude Code profile switcher"
  homepage "https://github.com/hota1024/ccswitch"
  url "https://github.com/hota1024/ccswitch/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "753b95ec276884109f56f5219cdba859d45d7c5702b0283f6d31efc8e3a35a51"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
    bin.install "ccswitch.sh"
  end
end
