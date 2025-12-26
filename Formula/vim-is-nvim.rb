class VimIsNvim < Formula
  desc "Make vim point to nvim"
  homepage "https://github.com/thiagowfx/homebrew-taps"
  url "file:///dev/null"
  version "1.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "neovim"

  def install
    bin.install_symlink Formula["neovim"].opt_bin/"nvim" => "vim"
  end
end
