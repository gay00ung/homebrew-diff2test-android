class D2t < Formula
  desc "Diff-driven Android ViewModel test generation CLI"
  homepage "https://github.com/gay00ung/diff2test-android"
  url "https://github.com/gay00ung/diff2test-android/releases/download/v1.0.1/d2t.zip"
  sha256 "f4f5099a5a71a3f84dca9fbfe838584047d4bbfaa956b539297ccdf237f69129"
  version "1.0.1"

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
