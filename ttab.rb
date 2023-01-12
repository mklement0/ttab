# typed: false
# frozen_string_literal: true

# CLI for opening tabs/windows in Terminal, iTerm2, or Gnome Terminal
class Ttab < Formula
  desc "CLI for opening tabs/windows in Terminal, iTerm2, or Gnome Terminal"
  homepage "https://github.com/mklement0/ttab"
  url "https://github.com/mklement0/ttab/archive/v0.7.3.tar.gz"
  sha256 "12871b3e7d6ce33d3a66ca57f41dbcb782746b5e59fca3e6b1eac084cf3f9337"

  def install
    bin.install "bin/ttab"
    man1.install "man/ttab.1"
  end

  test do
    stdout = shell_output "#{bin}/ttab --version"
    assert_match(/ttab v#{version}/, stdout)
  end
end
