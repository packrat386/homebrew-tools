class Kamino < Formula
  desc "Cloning experts"
  homepage "https://github.com/packrat386/kamino"
  url "https://github.com/packrat386/kamino/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  license "MIT"

  def install
    bin.install "kamino" => "kamino"
  end

  test do
    system "#{bin}/kamino", "help"
  end
end
