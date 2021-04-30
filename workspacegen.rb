class Workspacegen < Formula
  desc "Command line to generate .xcworkspace also add .xcodeproj and local Swift Package Manager"
  homepage "https://github.com/gustavoSAS/WorkspaceGen"
  url "https://github.com/gustavoSAS/WorkspaceGen/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d94d678a701fd24a67ed9d1fec57c596480f368cf50d04ed94e3a1600b74a7a8"
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
