class TlsBench < Formula
  desc "A TLS benchmarking tool for evaluating servers TLS handshake performance."
  homepage "https://github.com/hmilkovi/tls-bench"
  version "0.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "59a55afe5ecfea64b66a2b4b9b6cafd74b8c0666dc58c9429aac5aaa22c5ead1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "2d288211c6d4bfc0c8a1d7dfe4b911a94c0564eaabccba7e2a4f7796d20264b2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "9825304f1362561c7f74fc877301e8a07e0a7a8cba3de13cae3c3c7cf02c2ecc"
  end

  def install
    bin.install "tls-bench"
  end

  test do
    system "#{bin}/tls-bench --version"
  end
end
