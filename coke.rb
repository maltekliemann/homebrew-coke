class Coke < Formula
  desc "Disable sleep on macOS"
  homepage "https://github.com/maltekliemann/coke"
  url "https://github.com/maltekliemann/coke/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2eb117ce5738ade29518b45b23601af8b41d6fe26aa731759606335d948984cc"
  license "MIT"

  depends_on :macos

  def install
    system "make", "install", "PREFIX=#{prefix}", "VERSION=#{version}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/coke version")
    assert_match "usage:", shell_output("#{bin}/coke help 2>&1")
  end
end
