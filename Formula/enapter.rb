class Enapter < Formula
  desc "Device management command-line tool for Enapter Energy Management System Toolkit"
  homepage "https://github.com/Enapter/enapter-cli"
  url "https://github.com/Enapter/enapter-cli.git",
    tag:      "v0.2.0",
    revision: "ac32133b47d6107bd68df6b123e9b63badb1fdd2"
  license "Apache-2.0"
  head "https://github.com/Enapter/enapter-cli.git", branch: "master"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{Utils.git_short_head}
      -X main.date=#{time.iso8601}
    ]

    system "go", "build", *std_go_args(ldflags: ldflags), "cmd/enapter/main.go"
  end

  test do
    assert_match "Enapter CLI #{version}", shell_output("#{bin}/enapter --version")
  end
end
