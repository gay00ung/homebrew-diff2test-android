class D2t < Formula
  desc "Diff-driven Android ViewModel test generation CLI"
  homepage "https://github.com/gay00ung/diff2test-android"
  url "https://github.com/gay00ung/diff2test-android/releases/download/v1.0.4/d2t.zip"
  sha256 "ab801621e2c0c9722b3c2834d4a41d0a6ed0e95d5bcf27f032a6060a9b9a787e"
  version "1.0.4"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/d2t"
  end

  test do
    output = shell_output("#{bin}/d2t help")
    assert_match "d2t commands:", output
  end
end
