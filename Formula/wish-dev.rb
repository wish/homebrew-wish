class WishDev < Formula
  desc "Docker-compose wrapper for development environments"
  homepage "https://github.com/wish/dev"

  url "https://github.com/wish/dev/releases/download/v0.1.8-alpha/dev.darwin"
  version "0.1.8-alpha"
  sha256 "8ae2c2a20d77e62c01c209fd7555df3d60979aee9bb22e88d7ad772683d7f119"

  def install
    bin.install "dev.darwin" => "dev"
  end

  test do
    system "#{bin}/dev", "--version"
  end
end
