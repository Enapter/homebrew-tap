# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EnapterAT3 < Formula
  desc "Command-line tool for Enapter Energy Management System Toolkit"
  homepage "https://github.com/Enapter/enapter-cli"
  version "3.0.0-alpha.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.5/enapter-cli-3.0.0-alpha.5-darwin-amd64.tar.gz"
      sha256 "b220989a79e7ec86606ae078d27902aa2c9aae4e8b63f2dd879a9a3ea048896c"

      def install
        bin.install "enapter3"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.5/enapter-cli-3.0.0-alpha.5-darwin-arm64.tar.gz"
      sha256 "b7a78de916e0654fc5807135b5e4c1134618e188ceea7f1368d3ac1234a2d65e"

      def install
        bin.install "enapter3"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.5/enapter-cli-3.0.0-alpha.5-linux-amd64.tar.gz"
        sha256 "013c984f3296315361ff6ec9f26c6e06f188a45d25f7e3aea397a1396739da9f"

        def install
          bin.install "enapter3"
        end
      end
    end
  end

  test do
    assert_match "Enapter CLI #{version}", shell_output("#{bin}/enapter3 --version")
  end
end
