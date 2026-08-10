class Meat < Formula
  desc "Abridge code diffs into reading diffs"
  homepage "https://meat.dev"
  url "https://github.com/boldsoftware/meat/archive/f39f41dfe7b5b37a12b35fdfbaecc7e779855bd3.tar.gz"
  version "0.0.0-20260803201634-f39f41dfe7b5"
  sha256 "faf4831aa3fa866168191b21414698f407f1d473c1572e4cc3942e2c595db6bd"
  license "Apache-2.0"
  head "https://github.com/boldsoftware/meat.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/meat"
  end

  test do
    assert_match "abridge a diff", shell_output("#{bin}/meat --help 2>&1")
  end
end
