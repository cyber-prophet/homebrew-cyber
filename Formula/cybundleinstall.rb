# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cybundleinstall < Formula
  desc "Cy - the hacker's browser of Cyber 🔵 superintelligence blockchains. Nushell based."
  homepage "https://github.com/cyber-prophet/cy/"
  url "https://raw.githubusercontent.com/cyber-prophet/homebrew-taps/main/releases/cybundleinstall-011.tar.gz"
  sha256 "fbdab658e5fbff389b949bdd57b7652e7683cfba494f27066b03677a3f0b86a5"
  license "MIT"

  # depends_on "nushell" 
  # depends_on "cyber" 
  # depends_on "pussy" 
  # depends_on "curl" 
  # depends_on "pueue" 
  # depends_on "ipfs"
  # depends_on "gum"
  

  # on_macos do 
  #   depends_on ""
  # end
  # depends_on cask: "wezterm" 

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    # bin_path = buildpath/"src/github.com/cyber-prophet/cy"
    # bin_path.install Dir["*"]
    
    bin.install 'cybundleinstall'
    # system "nu", "-c", "'cp brew_scripts/cy.sh #{bin}/cy'"

    # cd bin_path do
    #   # system "nu", "-c", "'cp brew_scripts/cy.sh #{bin}/cy'"
    # end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test cy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
