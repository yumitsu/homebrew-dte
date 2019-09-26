class Dte < Formula
  desc "Small and configurable console text editor"
  homepage "https://github.com/craigbarnes/dte"
  url "https://github.com/craigbarnes/dte/releases/download/v1.9/dte-1.9.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  def install
    system "make", "-j#{ENV.make_jobs}"
    system "make", "prefix=#{prefix}", "install"
  end

  test do
    assert_equal "20", shell_output("#{bin}/dte -b compiler/gcc | wc -l").strip
  end
end
