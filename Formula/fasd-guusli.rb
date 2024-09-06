class Fasd < Formula
  desc "CLI tool for quick access to files and directories"
  homepage "https://github.com/guusli/fasd"
  url "https://github.com/guusli/fasd/archive/refs/tags/1.0.1.tar.gz"
  sha256 "88efdfbbed8df408699a14fa6c567450bf86480f5ff3dde42d0b3e1dee731f65"
  license "MIT"
  head "https://github.com/guusli/fasd.git", branch: "master"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "ef3e9e128885144c04e3c09b5604330dfd076ad68df428a80026fd0164fee5e0"
  end

  def install
    bin.install "fasd"
    man1.install "fasd.1"
  end

  test do
    system "#{bin}/fasd", "--init", "auto"
  end
end

