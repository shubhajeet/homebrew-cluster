# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class jsontools < Formula
  desc "simple python and bash script to convert the yaml, toml file to json and json to csv"
  homepage "https://maharjansujit.com.np/"
  url "https://gist.github.com/fefdc57b831addbdf509b1cb40c1ecb2.git"
  sha256 ""
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    bin.install "jsonfilter.sh" => "jsonfilter"
    bin.install "jsontocsv.py" => "jsontocsv"
    bin.install "tomltojsonfilter.sh" => "tomltojsonfilter"
    bin.install "yamltojsonfilter.sh" => "yamltojsonfilter"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fefdc57b831addbdf509b1cb40c1ecb`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
