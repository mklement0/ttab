class Ttab < Formula
  desc "CLI for programmatically opening tabs/windows in Terminal, iTerm2, or Gnome Terminal"
  homepage "https://github.com/mklement0/ttab"
  url "https://github.com/mklement0/ttab/archive/v0.7.2.tar.gz"
  sha256 "954678b73784ae1b299bfaa6b1f97d667e59e4f9d77057f714952a07ec54096f"

  def install
    bin.install "bin/ttab"
    man1.install "man/ttab.1"
  end

  test do
    stdout = shell_output "#{bin}/ttab --version"
    assert_match /ttab v#{version}/, stdout
  end
end
