class TlsBench < Formula
  desc "A TLS benchmarking tool for evaluating servers TLS handshake performance."
  homepage "https://github.com/hmilkovi/tls-bench"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.intel?
    url ""
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "dcf503fa42b524184882c13a6c813880de2a397a6e18c0a122498bfe88f5fad3"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "c36aae4ab29dd22a2462a254f1dc509e72aaf2c6d805820ed1e43833006e725b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "ac5507043f2ed372db4bab30d5fa02291983625ff0de2c3dd2c811a377a46933"
  end

  def install
    bin.install "tls-bench"
  end

  test do
    system "#{bin}/tls-bench --version"
  end
end
