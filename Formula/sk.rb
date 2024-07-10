class Sk < Formula
  desc "a tool for collecting and running scripts"
  homepage "https://github.com/packrat386/sk"
  url "https://github.com/packrat386/sk/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8dd8e1b2e998b24a5b618c8138d381daf027659ea2ef8ca4bbfcb4620f71e4dc"
  license "MIT"

  def install
    pkgshare.install "sk.sh"
  end

  def caveats
    <<~EOF
      Add the following to the ~/.bash_profile or ~/.zshrc:
        [ -s #{pkgshare}/sk.sh ] && \. #{pkgshare}/sk.sh
    EOF
  end

  test do
    (testpath/"script.sh").write <<~EOF
[ -s #{pkgshare}/sk.sh ] && \. #{pkgshare}/sk.sh

sk help
EOF

    system "bash", testpath/"script.sh"
  end
end
