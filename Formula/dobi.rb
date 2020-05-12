class Dobi < Formula
  desc "A build automation tool for Docker applications"
  homepage "https://dnephin.github.io/dobi/"
  url "https://github.com/dnephin/dobi/releases/download/v0.13.0/dobi-Darwin"
  sha256 "1414519d1cfced5f7f731527f5ad0d0d10d9fc05cad8fffe5e912be3190cae19"

  def install
    bin.install "dobi-Darwin" => "dobi"
  end

  test do
    system "#{bin}/dobi", "--version"
  end
end
