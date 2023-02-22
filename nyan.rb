# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nyan < Formula
  desc "Colored cat command which supports syntax highlighting"
  homepage "https://github.com/toshimaru/nyan"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v1.0.4/nyan_Darwin_x86_64.tar.gz"
      sha256 "2041ecd2e67e98d2331f3baa96499ba44a21ff7a9be227c2dd489f3eb4c6dbb3"

      def install
        bin.install "nyan"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/toshimaru/nyan/releases/download/v1.0.4/nyan_Darwin_arm64.tar.gz"
      sha256 "2c0ebadd687b44fb80788cb89c055971cdfe712b440253a91d9aa56dcb731698"

      def install
        bin.install "nyan"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/toshimaru/nyan/releases/download/v1.0.4/nyan_Linux_x86_64.tar.gz"
      sha256 "27c69b02bbfd203df05f48c7efdc004e0124ed632b1ac06de82330e2202b0663"

      def install
        bin.install "nyan"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/toshimaru/nyan/releases/download/v1.0.4/nyan_Linux_arm64.tar.gz"
      sha256 "52223b0c302a90e8622ce7e9e68b5ca53089cb5781edc1c173b4d6e304e02c92"

      def install
        bin.install "nyan"
      end
    end
  end

  test do
    system "#{bin}/nyan", "-v"
  end
end
