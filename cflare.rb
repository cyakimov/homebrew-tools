class Cflare < Formula
  desc "Cloudflare command-line tool"
  homepage "https://github.com/cyakimov/cloudflare-cli"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cyakimov/cloudflare-cli/releases/download/v0.1.0/cflare-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "3c09993f7c747348d9ce6b2dfb4892e8acbaf9decf597538ab45bf38819a0d76"
  elsif OS.linux?
	url "https://github.com/cyakimov/cloudflare-cli/releases/download/v0.1.0/cflare-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
	sha256 "03666b2932392c7d25f21a799b216b57bf20d20edbaf6abd2b3c5afc8ec056c6"
  end

  def install
    bin.install "cflare"
  end

  test do
    system "#{bin}/cflare", "-V"
  end
end
