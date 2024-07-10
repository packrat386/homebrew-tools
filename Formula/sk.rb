class Sk < Formula
  desc "Tool for collecting and running scripts"
  homepage "https://github.com/packrat386/sk"
  url "https://github.com/packrat386/sk/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "3d923f3303d41ce6d438dac0af06947f0d5ad19857a9e29456a17218d265b621"
  license "MIT"

  def install
    pkgshare.install "sk.sh"
  end

  def caveats
    <<~EOF
      Add the following to the ~/.bash_profile or ~/.zshrc:
        [ -s #{pkgshare}/sk.sh ] && . #{pkgshare}/sk.sh
    EOF
  end

  test do
    (testpath/"script.sh").write <<~EOF
      [ -s #{pkgshare}/sk.sh ] && . #{pkgshare}/sk.sh

      sk help
    EOF

    system "bash", testpath/"script.sh"
  end
end
