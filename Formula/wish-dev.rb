class WishDev < Formula
  desc "Docker-compose wrapper for development environments"
  homepage "https://github.com/wish/dev"

  url "https://github.com/wish/dev/releases/download/v0.1.9-alpha/dev.darwin"
  version "0.1.9-alpha"
  sha256 "4414318a9ad3efeef0f8102d23b92bf4b540cc664e4e56e807fb2129b4c5ec50"

  def install
    bin.install "dev.darwin" => "dev"
  end

  test do
    system "#{bin}/dev", "--version"
  end
end
