class D2t < Formula
  desc "Diff-driven Android ViewModel test generation CLI"
  homepage "https://github.com/gay00ung/diff2test-android"
  url "https://github.com/gay00ung/diff2test-android/releases/download/v0.2.1/d2t.zip"
  sha256 "4c6a5cef25d1093a0d90d0d98c109655aa4596d527e5f3ff68291ed78eae7b25"
  version "0.2.1"

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
