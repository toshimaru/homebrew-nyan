# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored `cat` command."
  homepage "https://github.com/toshimaru/nyan"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/toshimaru/nyan/releases/download/v0.0.1/nyan_Darwin_x86_64.tar.gz"
    sha256 "1f6fe01d743f5ef63ca7a07d0ab8ef73fa26b2573ed1da9b3c4124cdee4170d6"
  elsif OS.linux?
    url "https://github.com/toshimaru/nyan/releases/download/v0.0.1/nyan_Linux_x86_64.tar.gz"
    sha256 "28df65a9c1375d20c08d14a6cd68f5c3a4cb976cee397fbac31bf2cb2f442de6"
  end

  def install
    bin.install "nyan"
  end
end
