# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Onionpipe < Formula
  desc ""
  homepage ""
  version "1.1.8"

  depends_on "tor"

  on_macos do
    url "https://github.com/cmars/onionpipe/releases/download/v1.1.8/onionpipe_1.1.8_darwin_amd64.tar.gz"
    sha256 "95b818e1b8348824f7cf5878fb47238fc8d083093426ca93474ed45cbd3f8925"

    def install
      bin.install "onionpipe"
    end

    on_arm do
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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cmars/onionpipe/releases/download/v1.1.8/onionpipe_1.1.8_linux_amd64.tar.gz"
        sha256 "25fcd9282525cb335c95c6a0c798e2ef0d2d187c2ad6768f46d9d0173bfdb2e6"

        def install
          bin.install "onionpipe"
        end
      end
    end
  end
end
