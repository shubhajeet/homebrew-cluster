class Jsontools < Formula
  #include Language::Python::Virtualenv
  desc "simple python and bash script to convert the yaml, toml file to json and json to csv"
  homepage "https://maharjansujit.com.np/"
  url "https://gist.github.com/fefdc57b831addbdf509b1cb40c1ecb2.git"
  sha256 ""
  # resource "toml" do
  #   url "https://files.pythonhosted.org/packages/da/24/84d5c108e818ca294efe7c1ce237b42118643ce58a14d2462b3b2e3800d5/toml-0.10.1.tar.gz"
  #   sha256 "926b612be1e5ce0634a2ca03470f95169cf16f939018233a670519cb4ac58b0f"
  # end
  # resource "PyYAML" do
  #   url "https://files.pythonhosted.org/packages/3d/d9/ea9816aea31beeadccd03f1f8b625ecf8f645bd66744484d162d84803ce5/PyYAML-5.3.tar.gz"
  #   sha256 "e9f45bd5b92c7974e59bcd2dcc8631a6b6cc380a904725fce7bc08872e691615"
  # end
  # resource "panda" do
  #   url "https://files.pythonhosted.org/packages/79/03/74996420528fe488ce17c42b6400531c8067d7eb661c304fa3aa8fdad17c/panda-0.3.1.tar.gz"
  #   sha256 "f213b848f09268b3e9fce0e103155ab003217c0e27f6048b6194e7f90bb2b716"
  # end
 license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install "jsonfilter.sh" => "jsonfilter"
    bin.install "jsontocsv.py" => "jsontocsv"
    bin.install "tomltojsonfilter.sh" => "tomltojsonfilter"
    bin.install "yamltojsonfilter.sh" => "yamltojsonfilter"
    # virtualenv_install_with_resources :using => "python@3.6"
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
