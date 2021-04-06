class Ttab < Formula
  desc "CLI for programmatically opening tabs/windows in Terminal, iTerm2, or Gnome Terminal"
  homepage "https://github.com/mklement0/ttab"
  url "https://github.com/mklement0/ttab/archive/v0.7.1.tar.gz"
  sha256 "54760305434d98f7e47a803b68bbe9a0eee7c053000e6540ec771382ff68d313"

  def install
    bin.install "bin/ttab"
    man1.install "man/ttab.1"
  end

  test do
    stdout = shell_output "#{bin}/ttab --version"
    assert_match /ttab v#{version}/, stdout
  end
end
