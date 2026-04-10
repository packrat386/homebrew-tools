class Kamino < Formula
  desc "Cloning experts"
  homepage "https://github.com/packrat386/kamino"
  url "https://github.com/packrat386/kamino/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "7d22ebd98b8b309112defe39e9ddd8abd25e02e94f8d0015e7113e14df17c362"
  license "MIT"

  def install
    bin.install "kamino" => "kamino"
  end

  test do
    system "#{bin}/kamino", "help"
  end
end
