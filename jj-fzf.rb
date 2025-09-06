class "jj-fzf" < Formula
  desc "FZF-based TUI for JJ VCS"
  homepage "https://github.com/tim-janik/jj-fzf"
  url "https://github.com/tim-janik/jj-fzf/releases/download/v0.32.0/jj-fzf-0.32.0.tar.zst"
  sha256 "73acac52b523376bfe580a7b9f00245856cb8da0d23f104dfd8dfab56792d202"
  license "MPL 2.0"

  # depends_on "cmake" => :build
  # depends_on "ninja" => :build

  def install
    system "make", "all", "install", "DESTDIR=#{prefix}"    
  end

  test do
    system bin, "jj-fzf", "--version"
  end
end
