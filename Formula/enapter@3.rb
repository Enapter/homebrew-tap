# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EnapterAT3 < Formula
  desc "Command-line tool for Enapter Energy Management System Toolkit"
  homepage "https://github.com/Enapter/enapter-cli"
  version "3.0.0-alpha.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.7/enapter-cli-3.0.0-alpha.7-darwin-amd64.tar.gz"
      sha256 "d4e1251056e5af11156d5a25cad8586aa40a51ac0b208936fc8131435b04b385"

      def install
        bin.install "enapter3"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.7/enapter-cli-3.0.0-alpha.7-darwin-arm64.tar.gz"
      sha256 "2fd9cce983e4c4d657717b2f98f29ff76c7aa8161c1b1c055d26b7aa6a5caf67"

      def install
        bin.install "enapter3"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/enapter/enapter-cli/releases/download/v3.0.0-alpha.7/enapter-cli-3.0.0-alpha.7-linux-amd64.tar.gz"
        sha256 "c9759c7d300c2412d0825e57bbfa0f189c985f316e677cf5d5c5e208280879d4"

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
