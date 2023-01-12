# typed: false
# frozen_string_literal: true

# CLI for opening tabs/windows in Terminal, iTerm2, or Gnome Terminal
class Ttab < Formula
  desc "CLI for opening tabs/windows in Terminal, iTerm2, or Gnome Terminal"
  homepage "https://github.com/mklement0/ttab"
  url "https://github.com/mklement0/ttab/archive/v0.8.0.tar.gz"
  sha256 "ce609d3db37f8d2a62f5e854a8b57c272ba3d180f05a2463c564b3a72fc00222"

  def install
    bin.install "bin/ttab"
    man1.install "man/ttab.1"
  end

  test do
    stdout = shell_output "#{bin}/ttab --version"
    assert_match(/ttab v#{version}/, stdout)
  end
end
