# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlApidocs < Formula
  desc "Quickly navigate and inspect Kubernetes API resources with an interactive tree view"
  homepage "https://github.com/hashmap-kz/homebrew-tap"
  version "1.0.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.12/kubectl-apidocs_v1.0.12_darwin_amd64.tar.gz"
      sha256 "dd3031af14af489d9da5399f71401d28986d383a25493d40b74bef71b4ba4f0f"

      def install
        bin.install "kubectl-apidocs"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.12/kubectl-apidocs_v1.0.12_darwin_arm64.tar.gz"
      sha256 "baf2e79c2233a78ea69a3425afe73a288809433cd38b58040e14b386e9469510"

      def install
        bin.install "kubectl-apidocs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.12/kubectl-apidocs_v1.0.12_linux_amd64.tar.gz"
        sha256 "0456615d9329dc80af1bead3aa9c90fc5229e6c36afc4ed1c90f7b691b2371e5"

        def install
          bin.install "kubectl-apidocs"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hashmap-kz/kubectl-apidocs/releases/download/v1.0.12/kubectl-apidocs_v1.0.12_linux_arm64.tar.gz"
        sha256 "ce533512fab8669a2e22208ea989669c44f5156be6fe30886b9a887a9b8f46f3"

        def install
          bin.install "kubectl-apidocs"
        end
      end
    end
  end

  test do
    system "#{bin}/kubectl-apidocs"
  end
end
