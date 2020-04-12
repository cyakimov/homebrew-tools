class Cflare < Formula
  desc "Cloudflare command-line tool"
  homepage "https://github.com/cyakimov/cloudflare-cli"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cyakimov/cloudflare-cli/releases/download/v0.2.0/cflare-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "569a56e18f42640038d71a0a68f87fabf61edbe2607387d41f0f9709a294b1b2"
  elsif OS.linux?
	  url "https://github.com/cyakimov/cloudflare-cli/releases/download/v0.2.0/cflare-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
	  sha256 "c11ce2e9be351a5866981cdf56a391d873922a13fc82a8ad11c32eb550a9c934"
  end

  def install
    bin.install "cflare"
  end

  test do
    system "#{bin}/cflare", "-V"
  end
end
