class WishCtl < Formula
  desc "Concurrent multi-cluster Kubernetes utility and management tool"
  homepage "https://github.com/wish/ctl"
  url "https://github.com/wish/ctl", using: :git, tag: "v14.3.0"

  depends_on "go@1.16" => :build
  depends_on "git"
  depends_on "kubectl"
  depends_on "wget"

  def install
    ENV["CGO_ENABLED"] = "0"
    ENV["GOOS"] = "darwin"
    system "sh", "-c", "GOCACHE= GOPATH= go get -v github.com/gobuffalo/packr/v2/packr2; $HOME/go/bin/packr2"
    system "go", "build", "-mod", "vendor", "-o", "bin/darwin/ctl", "github.com/wish/ctl"
    bin.install "bin/darwin/ctl" => "ctl"
  end

  test do
    system "#{bin}/ctl", "--version"
  end
end
