class Coke < Formula
  desc "Disable sleep on macOS"
  homepage "https://github.com/maltekliemann/coke"
  url "https://github.com/maltekliemann/coke/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "9a858d88e21a90ec925c0bd68e1ec7442d7729bd924e06da29ac32e2a280965c"
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
