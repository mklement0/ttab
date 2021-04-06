class Ttab < Formula
  desc "CLI for programmatically opening tabs/windows in Terminal, iTerm2, or Gnome Terminal"
  homepage "https://github.com/mklement0/ttab"
  url "https://github.com/mklement0/ttab/archive/v0.6.1.tar.gz"
  sha256 "5ccfb01c8798bcc78de09ffaeb586eddd5b93166ddf6101167ac9b3202c6e5e1"

  def install
    bin.install "bin/ttab"
    man1.install "man/ttab.1"
  end

  test do
    stdout = shell_output "#{bin}/ttab --version"
    assert_match /ttab v#{version}/, stdout
  end
end
