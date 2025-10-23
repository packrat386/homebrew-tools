class Kamino < Formula
  desc "Cloning experts"
  homepage "https://github.com/packrat386/kamino"
  url "https://github.com/packrat386/kamino/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "30f1f8b8c0fca8ddcacd74403f9ccdf1a5b3965a5601647b09f1f2bd1b12b7d3"
  license "MIT"

  def install
    bin.install "kamino" => "kamino"
  end

  test do
    system "#{bin}/kamino", "help"
  end
end
