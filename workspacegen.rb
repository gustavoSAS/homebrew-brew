class Workspacegen < Formula
  desc "Command line to generate .xcworkspace also add .xcodeproj and local Swift Package Manager"
  homepage "https://github.com/gustavoSAS/WorkspaceGen"
  url "https://github.com/gustavoSAS/WorkspaceGen/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "48634899c73479a940dac5426ea75f272a236c40417712db6bd4c2d0de8879b6"
  head "https://github.com/gustavoSAS/WorkspaceGen.git"
  license "MIT"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    system "false"
  end
end
