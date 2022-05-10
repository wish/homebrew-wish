class Dobi < Formula
  desc "A build automation tool for Docker applications"
  homepage "https://dnephin.github.io/dobi/"

  #OG Entry
  #url "https://github.com/dnephin/dobi/releases/download/v0.13.0/dobi-Darwin"
  #sha256 "1414519d1cfced5f7f731527f5ad0d0d10d9fc05cad8fffe5e912be3190cae19"

  url "https://github.com/dnephin/dobi/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "15d31d8a93fcfd7b5b1b27559a562a3503a9a60ce673e9093e06b70ae41e2963"

  depends_on "go@1.16" => :build
  depends_on "docker"
  depends_on "git"

  def install
    #system "docker run -ti --rm -w $(pwd) -v $(pwd):$(pwd) -e DOCKER_HOST \
    #-v /var/run/docker.sock:/var/run/docker.sock \
    #dnephin/dobi:0.15.0"
    ENV["CGO_ENABLED"] = "0"
    system "go build -o bin/dobi"
    #system "./configure", *std_configure_args, "--disable-silent-rules"
    #system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "bin/dobi" => "dobi"
  end

  test do
    system "#{bin}/dobi", "--version"
  end
end
