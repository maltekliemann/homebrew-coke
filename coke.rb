class Coke < Formula
  desc "Disable sleep on macOS"
  homepage "https://github.com/maltekliemann/coke"
  url "https://github.com/maltekliemann/coke/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "11ee6c1cb924a395c9317933b843783cf3cfc5209ef5703472862d928be12d49"
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
