class WishCtl < Formula
  desc "Concurrent multi-cluster Kubernetes utility and management tool"
  homepage "https://github.com/wish/ctl"
  url "https://github.com/wish/ctl/releases/download/v12.0.1-1/ctl_12.0.1-1_darwin_amd64"
  sha256 "1f2ffe5d9b066e15e1636e990f3eb84e8da377191ac123d4840f0cc7f98adda5"

  def install
    bin.install "ctl_12.0.1-1_darwin_amd64" => "ctl"
  end

  test do
    system "#{bin}/ctl", "--version"
  end
end
