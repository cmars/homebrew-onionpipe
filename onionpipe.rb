# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Onionpipe < Formula
  desc ""
  homepage ""
  version "1.0.12"

  on_macos do
    url "https://github.com/cmars/onionpipe/releases/download/v1.0.12/onionpipe_1.0.12_darwin_amd64.tar.gz"
    sha256 "faa6ae666d48dbda28d1152e107792775a2ade600c144fd7de360d11bedfa5c2"

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
      url "https://github.com/cmars/onionpipe/releases/download/v1.0.12/onionpipe_1.0.12_linux_amd64.tar.gz"
      sha256 "d538284fcb074ee96e0e5cbbac2593922b3be62eccb0584f3e0e38bb0e33a429"

      def install
        bin.install "onionpipe"
      end
    end
  end

  depends_on "tor"
end
