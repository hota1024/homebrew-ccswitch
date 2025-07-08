class Ccswitch < Formula
  desc "Claude Code profile switcher"
  homepage "https://github.com/hota1024/ccswitch"
  url "https://github.com/hota1024/ccswitch/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "eabc715ac7551c848217a2543652204ba2f207f1304f1ee64ed62999519a7b4d"

  depends_on "rust" => :build

  def install
    bin.install "ccswitch_fn"
    system "cargo", "install", "--root", prefix, "--path", "."
    puts "Installation completed successfully."
  end

  def caveats
    <<~EOS
      Please add the following script to your shell configuration file(e.g. ~/.bashrc, ~/.zshrc):
      ```shell
      source #{opt_bin}/ccswitch_fn
      ```
    EOS
  end
end
