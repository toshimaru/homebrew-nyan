# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored cat command which supports syntax highlighting."
  homepage "https://github.com/toshimaru/nyan"
  version "0.5.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/toshimaru/nyan/releases/download/v0.5.5/nyan_Darwin_x86_64.tar.gz"
    sha256 "0af0641f785b0a5cef06dc6e1bf73ebe04987eb85b8cf50ae1be21ea8c80dc37"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.5.5/nyan_Linux_x86_64.tar.gz"
      sha256 "64ac59aeb00e349dee70aec08684eca13981f702a15f15b53de7eb099eea2258"
    end
  end

  def install
    bin.install "nyan"
  end

  test do
    system "#{bin}/nyan -v"
  end
end
