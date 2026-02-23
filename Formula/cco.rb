class Cco < Formula
  desc "A sandboxing wrapper for Claude Code"
  homepage "https://github.com/nikvdp/cco"
  head "https://github.com/nikvdp/cco.git", branch: "master"
  license "MIT"

  def install
    libexec.install "cco", "lib", "sandbox"

    # Patch the installation directory detection to point to libexec
    inreplace libexec/"cco",
      'CCO_INSTALLATION_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"',
      "CCO_INSTALLATION_DIR=\"#{libexec}\""

    bin.install_symlink libexec/"cco"
  end

  test do
    assert_match "cco", shell_output("#{bin}/cco --help 2>&1", 1)
  end
end
