class WishCtl < Formula
  desc "Concurrent multi-cluster Kubernetes utility and management tool"
  homepage "https://github.com/wish/ctl"
  url "https://github.com/wish/ctl", :using => :git, :tag => "v14.2.0"

  depends_on "go@1.15" => :build
  depends_on "wget"
  depends_on "git"
  depends_on "kubectl"

  def install
    ENV["CGO_ENABLED"] = "0"
    ENV["GOOS"] = "darwin"
    system "sh", "-c", "GOCACHE= GOPATH= go get -v -u github.com/gobuffalo/packr/v2/packr2; $HOME/go/bin/packr2"
    system "go", "build", "-o", "bin/darwin/ctl", "github.com/wish/ctl"
    bin.install "bin/darwin/ctl" => "ctl"
  end

  test do
    system "#{bin}/ctl", "--version"
  end
end
