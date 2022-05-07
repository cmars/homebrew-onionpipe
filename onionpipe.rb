# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Onionpipe < Formula
  desc ""
  homepage ""
  version "1.0.9"

  on_macos do
    url "https://github.com/cmars/onionpipe/releases/download/v1.0.9/onionpipe_1.0.9_darwin_amd64.tar.gz"
    sha256 "ac292f598d73e29a2108d59400c7c57037667458d8788c23a7283a8e013400df"

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
      url "https://github.com/cmars/onionpipe/releases/download/v1.0.9/onionpipe_1.0.9_linux_amd64.tar.gz"
      sha256 "aec8fec389ee0ba412a92986603eef0dfa2b7f44da3a75423f3772491d5c4a10"

      def install
        bin.install "onionpipe"
      end
    end
  end

  depends_on "tor"
end
