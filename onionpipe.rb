# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Onionpipe < Formula
  desc ""
  homepage ""
  version "1.0.10"

  on_macos do
    url "https://github.com/cmars/onionpipe/releases/download/v1.0.10/onionpipe_1.0.10_darwin_amd64.tar.gz"
    sha256 "a3b5796c0f6776a7965845efb9b453915534bea3de49b8272a607283904f1948"

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
      url "https://github.com/cmars/onionpipe/releases/download/v1.0.10/onionpipe_1.0.10_linux_amd64.tar.gz"
      sha256 "913878730a82e136b950db6182f563f56380de93674005adae75bdfc7656a5dd"

      def install
        bin.install "onionpipe"
      end
    end
  end

  depends_on "tor"
end
