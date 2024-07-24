# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pussy < Formula
  desc "pussy cli (for managing space-pussy consesnsus computer)"
  homepage "https://github.com/cyber-prophet/space-pussy-brew"
  url "https://github.com/greatweb/space-pussy/archive/refs/tags/v0.0.3.1.tar.gz"
  sha256 "dc0ae8af1b6f0e2846fd33583beaf5599a921321f52b8c05ed5594627c8737f1"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GOMODCACHE"] = pkgetc

    # Had an error on linux. Got the solution here:
    # https://raw.githubusercontent.com/Homebrew/homebrew-core/master/Formula/ethereum.rb
    # https://github.com/Homebrew/brew/issues/14763
    ENV.O0 if OS.linux?

    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin_path = buildpath/"src/github.com/greatweb/space-pussy"
    bin_path.install Dir["*"]

    cd bin_path do
      system "make", "build", "BUILDDIR=#{bin}"
    end
  end

  test do
    # assert_match "exist: true", shell_output("#{bin}/cyber query rank is-exist-any QmRX8qYgeZoYM3M5zzQaWEpVFdpin6FvVXvp6RPQK3oufV QmXFUupJCSfydJZ85HQHD8tU1L7CZFErbRdMTBxkAmBJaD")
  end
end
