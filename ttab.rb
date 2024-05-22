# typed: false
# frozen_string_literal: true

# CLI for opening tabs/windows in Terminal, iTerm2, or Gnome Terminal
class Ttab < Formula
  desc "CLI for opening tabs/windows in Terminal, iTerm2, or Gnome Terminal"
  homepage "https://github.com/mklement0/ttab"
  url "https://github.com/mklement0/ttab/archive/v0.9.0.tar.gz"
  sha256 "319cab67944dac78560804171eab960962f66a79b4b3548c1ccceb2b54e1a25f"

  def install
    bin.install "bin/ttab"
    man1.install "man/ttab.1"
  end

  test do
    stdout = shell_output "#{bin}/ttab --version"
    assert_match(/ttab v#{version}/, stdout)
  end
end
