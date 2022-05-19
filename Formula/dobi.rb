class Dobi < Formula
  desc "A build automation tool for Docker applications"
  homepage "https://dnephin.github.io/dobi/"
  url "https://github.com/dnephin/dobi/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "15d31d8a93fcfd7b5b1b27559a562a3503a9a60ce673e9093e06b70ae41e2963"

  depends_on "go@1.16" => :build
  depends_on "git"

  def install
    system "go build -o bin/dobi"
    bin.install "bin/dobi" => "dobi"
  end

  test do
    system "#{bin}/dobi", "--version"
  end
end
