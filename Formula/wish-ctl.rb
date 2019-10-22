class WishCtl < Formula
  desc "Concurrent multi-cluster Kubernetes utility and management tool"
  homepage "https://github.com/wish/ctl"
  url "https://github.com/wish/ctl/releases/download/v12.0.1-1/ctl_12.0.1-1_darwin_amd64"
  sha256 "d3bfd895df59373f3bc79e7aaab4aa3f06220a641f8903de4afc4a8a7c87eae0"

  def install
    bin.install "ctl_12.0.1-1_darwin_amd64" => "ctl"
  end

  test do
    system "#{bin}/ctl", "--version"
  end
end
