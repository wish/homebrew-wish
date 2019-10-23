class WishCtl < Formula
  desc "Concurrent multi-cluster Kubernetes utility and management tool"
  homepage "https://github.com/wish/ctl"
  url "https://github.com/wish/ctl/releases/download/v12.0.1-1/ctl_12.0.1-1_darwin_amd64"
  sha256 "afe310481731c4932282700a78a2e502a46e2210a1df3982ca7e0bb618a83518"

  def install
    bin.install "ctl_12.0.1-1_darwin_amd64" => "ctl"
  end

  test do
    system "#{bin}/ctl", "--version"
  end
end
