# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PgdumpEach < Formula
  desc "PostgreSQL version upgrade assistant"
  homepage "https://github.com/hashmap-kz/homebrew-tap"
  version "1.0.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hashmap-kz/pgdump-each/releases/download/v1.0.8/pgdump-each_v1.0.8_darwin_amd64.tar.gz"
      sha256 "9aeb368907c11a33976192154645e7ddb699298b11f60691d3681ccbfc5929ba"

      def install
        bin.install "pgdump-each"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hashmap-kz/pgdump-each/releases/download/v1.0.8/pgdump-each_v1.0.8_darwin_arm64.tar.gz"
      sha256 "c0bafe5928869898ffa9f88c66daca104827becfd87d396287f970f5268e90dc"

      def install
        bin.install "pgdump-each"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hashmap-kz/pgdump-each/releases/download/v1.0.8/pgdump-each_v1.0.8_linux_amd64.tar.gz"
        sha256 "d49289858a409b1b9353de385145501dbcecf2893235368cb6b551a95c04763a"

        def install
          bin.install "pgdump-each"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hashmap-kz/pgdump-each/releases/download/v1.0.8/pgdump-each_v1.0.8_linux_arm64.tar.gz"
        sha256 "74d79202212fb88ee9ec17aa7a92a2a480a4cb7570cebe2819e10d763d2a7f82"

        def install
          bin.install "pgdump-each"
        end
      end
    end
  end

  test do
    system "#{bin}/pgdump-each"
  end
end
