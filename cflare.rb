class Cflare < Formula
  desc "Cloudflare command-line tool"
  homepage "https://github.com/cyakimov/cloudflare-cli"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cyakimov/cloudflare-cli/releases/download/v0.2.0/cflare-v0.2.0-x86_64-apple-darwin.tar.gz"
    sha256 "aed3984f9655f8ce51746a134d5dcb8d3fece5e9c3eeac6a61fd152466e8736d"
  elsif OS.linux?
	url "https://github.com/cyakimov/cloudflare-cli/releases/download/v0.2.0/cflare-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
	sha256 "488f09384dcc9462a4aa3112d8d6917bb6bbc9ac9d984c91dfeab07270dcc82d"
  end

  def install
    bin.install "cflare"
  end

  test do
    system "#{bin}/cflare", "-V"
  end
end
