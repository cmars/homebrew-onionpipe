# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Onionpipe < Formula
  desc ""
  homepage ""
  version "1.1.10"

  depends_on "tor"

  on_macos do
    url "https://github.com/cmars/onionpipe/releases/download/v1.1.10/onionpipe_1.1.10_darwin_amd64.tar.gz"
    sha256 "0ccd5ab98ffc270c217b56316120afc04ab7287df3c8b33036d30004a218ae80"

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
        url "https://github.com/cmars/onionpipe/releases/download/v1.1.10/onionpipe_1.1.10_linux_amd64.tar.gz"
        sha256 "27ed21d10d87f8564f60abf0cef73b2226562260dbe7f9b16256196208ebc0f3"

        def install
          bin.install "onionpipe"
        end
      end
    end
  end
end
