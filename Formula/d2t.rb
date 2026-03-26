class D2t < Formula
  desc "Diff-driven Android ViewModel test generation CLI"
  homepage "https://github.com/gay00ung/diff2test-android"
  url "https://github.com/gay00ung/diff2test-android/releases/download/v1.0.2/d2t.zip"
  sha256 "18b785115311853a52cc6a5ec1dcf5e4ac958b894c92f3b5358a71594b31aabe"
  version "1.0.2"

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
