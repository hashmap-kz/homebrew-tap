# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlApidocs < Formula
  desc "Quickly navigate and inspect Kubernetes API resources with an interactive tree view"
  homepage "https://github.com/hashmap-kz/homebrew-tap"
  version "1.0.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.14/kubectl-apidocs_v1.0.14_darwin_amd64.tar.gz"
      sha256 "cedeb77757e75afe78bcf6acc02225a8418d6f3870c7860a3db13eaecb455e4c"

      def install
        bin.install "kubectl-apidocs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.14/kubectl-apidocs_v1.0.14_darwin_arm64.tar.gz"
      sha256 "5f947c38a966bd862eac3a06bcf8894f29728a01922f7e47ad8aff3d3b86756c"

      def install
        bin.install "kubectl-apidocs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.14/kubectl-apidocs_v1.0.14_linux_amd64.tar.gz"
      sha256 "1a2d8ff5fff738d6410a23b0b97b13e660a51558e702e067eab03572b5cad9b2"
      def install
        bin.install "kubectl-apidocs"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.14/kubectl-apidocs_v1.0.14_linux_arm64.tar.gz"
      sha256 "9d1597c349a375182cbb4e8027fd6470c239e02c92ce1f66776bf170b92c1b83"
      def install
        bin.install "kubectl-apidocs"
      end
    end
  end

  test do
    system "#{bin}/kubectl-apidocs"
  end
end
