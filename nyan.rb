# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored cat command which supports syntax highlighting"
  homepage "https://github.com/toshimaru/nyan"
  version "0.10.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/toshimaru/nyan/releases/download/v0.10.6/nyan_Darwin_arm64.tar.gz"
      sha256 "31a896bb0d23b4600416129d7b9ae9158dcded5c7a63074864c57a40ab592c90"

      def install
        bin.install "nyan"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.10.6/nyan_Darwin_x86_64.tar.gz"
      sha256 "4f0747d0f798d07523297cbffcde18b5e20beeb2f20e73e0e50f9c2e83dbf676"

      def install
        bin.install "nyan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v0.10.6/nyan_Linux_x86_64.tar.gz"
      sha256 "98944722022f262f9e04dd909413f7f45b1999b43c22631343454b457a87b3fd"

      def install
        bin.install "nyan"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/toshimaru/nyan/releases/download/v0.10.6/nyan_Linux_arm64.tar.gz"
      sha256 "d99c8a901d82a2f1b753b4c610d09869aea58aaa067cb6e92670192ecc9a00a0"

      def install
        bin.install "nyan"
      end
    end
  end

  test do
    system "#{bin}/nyan", "-v"
  end
end
