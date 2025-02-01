class TlsBench < Formula
	desc "A TLS benchmarking tool for evaluating servers TLS handshake performance."
	homepage "https://github.com/hmilkovi/tls-bench"
	version "0.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url ""
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "5500274813647b1cadd5c1e2245fc6a5e3ee46ca63722179cb38d0a56fe42e35"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "822cdff500bafc672a0b02ef36e7e0a4ae580dc3fd78d132334b7d5b46ead13b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hmilkovi/tls-bench/releases/download/v#{version}/tls-bench-v#{version}-x86_64-unknown-linux-musl.tar.gz"
    sha256 "de5ce566b9f70fbe6a8e72de690c067d98bb66234c19c08c143828dbbf786d5d"
  end



	def install
		bin.install "tls-bench"
	end

	test do
    system "#{bin}/tls-bench --version"
  end
end
