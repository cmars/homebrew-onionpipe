# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Onionpipe < Formula
  desc ""
  homepage ""
  version "1.0.4"

  on_macos do
    url "https://github.com/cmars/onionpipe/releases/download/v1.0.4/onionpipe_1.0.4_darwin_amd64.tar.gz"
    sha256 "7beb0099ecc81cfc953982d987f466e4dcd5ada5a5214f7dcfb4c59e240b4dba"

    def install
      bin.install "onionpipe"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Onionpipe
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cmars/onionpipe/releases/download/v1.0.4/onionpipe_1.0.4_linux_amd64.tar.gz"
      sha256 "8aea617280f3851720a15da75d98c446e84ff6202eea816b3fcb1ac249a8c1da"

      def install
        bin.install "onionpipe"
      end
    end
  end

  depends_on "tor"
end
