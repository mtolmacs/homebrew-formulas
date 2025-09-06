class JjFzf < Formula
  desc "Text UI for Jujutsu based on fzf"
  homepage "https://github.com/tim-janik/jj-fzf"
  url "https://github.com/tim-janik/jj-fzf/releases/download/v0.32.0/jj-fzf-0.32.0.tar.zst"
  sha256 "73acac52b523376bfe580a7b9f00245856cb8da0d23f104dfd8dfab56792d202"
  license "MPL-2.0"

  depends_on "pandoc" => :build
  depends_on "fzf" => :install
  depends_on "jj" => :install

  def install
    system "make", "all"
    bin.install "jj-fzf" => "jj-fzf"
  end

  test do
    system bin, "jj-fzf", "--version"
  end
end
