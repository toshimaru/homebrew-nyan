# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored cat command which supports syntax highlighting."
  homepage "https://github.com/toshimaru/nyan"
  version "0.8.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/toshimaru/nyan/releases/download/v0.8.2/nyan_Darwin_x86_64.tar.gz"
    sha256 "425c5fbccc1ae2b71627f4fb64d86ecd2d9d5347c231f163ee61d607f0cbd7f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/toshimaru/nyan/releases/download/v0.8.2/nyan_Linux_x86_64.tar.gz"
    sha256 "793ae3f23abbd5382111851cf1b92cd666ebacb31e2eeea043a29db10711c862"
  end

  def install
    bin.install "nyan"
  end

  test do
    system "#{bin}/nyan -v"
  end
end
