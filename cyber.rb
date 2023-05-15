# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cyber < Formula
  desc ""
  homepage ""
  url "https://github.com/cyber-prophet/go-cyber-for-brew/archive/refs/tags/v0.3.2.2.tar.gz"
  sha256 "b909922d36324735b5f09bafdb2c4c32e6b71fdf1eda0318fc3bd61dca97ce0a"
  license ""

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["CGO_LDFLAGS"] = libexec
    libexec.mkdir
    # ENV["CGO_LDFLAGS"] = prefix/"pkg"
    
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin_path = buildpath/"src/github.com/cyber-prophet/cyber"
    bin_path.install Dir["*"]
    cd bin_path do
      # system "go", "build", "-tags", "netgo ledger", "-ldflags", "-X github.com/cosmos/cosmos-sdk/version.Name=cyber -X github.com/cosmos/cosmos-sdk/version.AppName=cyber -X github.com/cosmos/cosmos-sdk/version.Version=0.3.2-1-g4b368a0 -X github.com/cosmos/cosmos-sdk/version.Commit=4b368a053bcbed034aa7399c036e229607795c40 -X 'github.com/cosmos/cosmos-sdk/version.BuildTags=netgo ledger,' -X github.com/tendermint/tendermint/version.TMCoreSemVer=v0.34.21", "-o", bin/"cyber", "./cmd/cyber"
      # system "make", "install-cli", "BINDIRCLI=#{bin}/"
      system "make", "build", "BUILDDIR=#{bin}/cyber"
    end
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
