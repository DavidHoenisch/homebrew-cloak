# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cloak < Formula
  desc "protect environmental vars from untrusted applications"
  homepage ""
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/DavidHoenisch/cloak/releases/download/v0.2.2/cloak_0.2.2_darwin_amd64.tar.gz"
      sha256 "bf0481830d00d15aa4103ce1be7a0c7421eb54d68ea035f86da063016bd35d9e"

      def install
        bin.install "cloak"
      end
    end
    on_arm do
      url "https://github.com/DavidHoenisch/cloak/releases/download/v0.2.2/cloak_0.2.2_darwin_arm64.tar.gz"
      sha256 "3ae010e41aa0d3acbf35429f443cfd9243298ba87ba2f275b94fe606fd8fda8f"

      def install
        bin.install "cloak"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DavidHoenisch/cloak/releases/download/v0.2.2/cloak_0.2.2_linux_amd64.tar.gz"
        sha256 "6c6f16900ee6111cade3d6781295608f1e3604ae2c292d4e0a31bb14d1252f55"

        def install
          bin.install "cloak"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DavidHoenisch/cloak/releases/download/v0.2.2/cloak_0.2.2_linux_arm64.tar.gz"
        sha256 "f6cde8b55773ab0f8766cf97b861437ba5c02bdfc5f4bdf8841a7ef9405bd0cc"

        def install
          bin.install "cloak"
        end
      end
    end
  end

  test do
    system "#{bin}/cloak --version"
  end
end
