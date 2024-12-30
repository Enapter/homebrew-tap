# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EnapterAT3 < Formula
  desc "Command-line tool for Enapter Energy Management System Toolkit"
  homepage "https://github.com/Enapter/enapter-cli"
  version "3.0.0-alpha.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.6/enapter-cli-3.0.0-alpha.6-darwin-amd64.tar.gz"
      sha256 "86c6d7fcd2c55e92908d6c80ab1f35a6698e06c2ab9e4e86cbb27107c0108f09"

      def install
        bin.install "enapter3"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.6/enapter-cli-3.0.0-alpha.6-darwin-arm64.tar.gz"
      sha256 "5d4e72c3891f6918ed1dffec321a96d6586ee8fb9eeb1bf8e3207d7dfefd3764"

      def install
        bin.install "enapter3"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.6/enapter-cli-3.0.0-alpha.6-linux-amd64.tar.gz"
        sha256 "65144cda3a7640bba98b8b7c3d14e8c07f97723afab32f28ced9de5d547a3838"

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
