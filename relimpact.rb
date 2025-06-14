# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Relimpact < Formula
  desc "Release Impact Analyzer for Go projects"
  homepage "https://github.com/hashmap-kz/homebrew-tap"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hashmap-kz/relimpact/releases/download/v0.0.6/relimpact_v0.0.6_darwin_amd64.tar.gz"
      sha256 "87ff99b16b2d526dcd4cd1923ca01dd3a233d8f22cedd477e6ca0134e468cd43"

      def install
        bin.install "relimpact"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hashmap-kz/relimpact/releases/download/v0.0.6/relimpact_v0.0.6_darwin_arm64.tar.gz"
      sha256 "18b339ffdd957bf0891180c2344e3b9ae4fc16530853e6dcf11103b4bfa3e94e"

      def install
        bin.install "relimpact"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/hashmap-kz/relimpact/releases/download/v0.0.6/relimpact_v0.0.6_linux_amd64.tar.gz"
      sha256 "1c6a45fffa0c0862fa4a6f8e025b63505c8d4af7a652ce87bf644edeebbb29ec"
      def install
        bin.install "relimpact"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/hashmap-kz/relimpact/releases/download/v0.0.6/relimpact_v0.0.6_linux_arm64.tar.gz"
      sha256 "14df6b197d6079f82a3d1b2fa5ff224a2c082d2d4b8706b17f2d080b0123dfc3"
      def install
        bin.install "relimpact"
      end
    end
  end

  test do
    system "#{bin}/relimpact"
  end
end
