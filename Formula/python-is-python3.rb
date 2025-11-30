class PythonIsPython3 < Formula
  desc "Make python point to python3"
  homepage "https://github.com/thiagowfx/homebrew-taps"
  url "file:///dev/null"
  version "1.0"

  depends_on "python"

  def install
    bin.install_symlink Formula["python"].opt_bin/"python3" => "python"
    bin.install_symlink Formula["python"].opt_bin/"pip3" => "pip"
  end
end
