# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored cat command which supports syntax highlighting."
  homepage "https://github.com/toshimaru/nyan"
  version "0.6.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/toshimaru/nyan/releases/download/v0.6.3/nyan_Darwin_x86_64.tar.gz"
    sha256 "cc767adaab629fa74773722c38b2a1a4882b5adfd8524eed329e6f05db018e46"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.6.3/nyan_Linux_x86_64.tar.gz"
      sha256 "fe58a6c15dfb73d59b1611a577728dbe1abd57d280558bf8e2e2a3f929df409b"
    end
  end

  def install
    bin.install "nyan"
  end

  test do
    system "#{bin}/nyan -v"
  end
end
