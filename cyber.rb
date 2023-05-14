# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cyber < Formula
  desc ""
  homepage ""
  url "https://github.com/cyber-prophet/go-cyber-for-brew/archive/refs/tags/v0.3.2dragonberry.tar.gz"
  sha256 "9f0a9c3fcff6dd768963bde6c2ac28275f39c25b2a66fe6ff61a243af86f26e5"
  license ""

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin_path = buildpath/"src/github.com/cyber-prophet/cyber"
    bin_path.install Dir["*"]
    cd bin_path do
      system "go", "build", "-o", bin/"cyber", "./cmd/cyber"
    end
    # system "make", "install", "SOFTWARE_2_ENABLED=false"
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cyber`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
