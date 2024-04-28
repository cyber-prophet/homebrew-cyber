# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cyber < Formula
  desc "cyber cli (for managing Bostrom consesnsus computer)"
  homepage "https://github.com/cybercongress/go-cyber"
  url "https://github.com/cybercongress/go-cyber/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "8a54c72572f397555f719f79b7e7b61165b4a2c4f2c3bd2bcae166a9b2260d29"
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
    bin_path = buildpath/"src/github.com/cybercongress/cyber"
    bin_path.install Dir["*"]

    cd bin_path do
      if OS.linux?
        system "make", "build", "CUDA_ENABLED=false" , "BUILDDIR=#{bin}/cyber"
      else
        system "make", "build", "BUILDDIR=#{bin}/cyber"
      end
    end
  end

  test do
    # assert_match "exist: true", shell_output("#{bin}/cyber query rank is-exist-any QmRX8qYgeZoYM3M5zzQaWEpVFdpin6FvVXvp6RPQK3oufV QmXFUupJCSfydJZ85HQHD8tU1L7CZFErbRdMTBxkAmBJaD")
  end
end
