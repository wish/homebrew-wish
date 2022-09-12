class WishDevPrerelease < Formula
  desc "Docker-compose wrapper for development environments"
  homepage "https://github.com/wish/dev"
  version "master"

  url "https://github.com/wish/dev", using: :git, branch: "master"

  conflicts_with "wish-dev", because: "Can only install one dev binary"

  depends_on "go@1.16" => :build

  def install
    system "make"
    bin.install "build/dev" => "dev"
  end

  test do
    system "#{bin}/dev", "--version"
  end
end
