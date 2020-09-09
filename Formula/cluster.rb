# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Cluster < Formula
  desc "cluster related commands"
  homepage "https://maharjansujit.com.np/projects/"
  url "https://gist.github.com/shubhajeet/945b54a75a97dc6b39b96befdeb845bf/archive/2b7d8932a6a4a7b542f9e64388a82e5f9a262d77.zip"
  sha256 "786784dbf30ed7c292005ccd472e6f86fb935ee4c48fcd78aa9dbc0c243d1574"
  verion "1.0"
  license "MIT"
  head "https://gist.github.com/945b54a75a97dc6b39b96befdeb845bf.git"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "cmake", ".", *std_cmake_args
    bin.install "clusterrun.sh" => "clusterrun"
    bin.install "clusterupload.sh" => "clusterupload"
    bin.install "clusterdownload.sh" => "clusterdownload.sh"
    bin.install "multissh.sh" => "multissh"
    man1.install "clusterrun.1"
    man1.install "clusterupload.1"
    man1.install "clusterdownload.1"
    man1.install "multissh.1"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test 945b54a75a97dc6b39b96befdeb845bf`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
