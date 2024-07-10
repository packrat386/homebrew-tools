class Kamino < Formula
  desc "Cloning experts"
  homepage "https://github.com/packrat386/kamino"
  url "https://github.com/packrat386/kamino/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e762856f9c001862a3ec2e510e0cfe49b4fe000f236f53b64701f186097ef883"
  license "MIT"

  def install
    bin.install "kamino" => "kamino"
  end

  test do
    system "#{bin}/kamino", "help"
  end
end
