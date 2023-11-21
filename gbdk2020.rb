class Gbdk2020 < Formula
  desc "Game Boy Development Kit 2020"
  homepage "https://github.com/gbdk-2020/gbdk-2020"
  url "https://github.com/gbdk-2020/gbdk-2020/releases/download/4.2.0/gbdk-macos.tar.gz"
  sha256 "76d157cea3ee1ad5bbbb37ccd95afb7b8e8a4e60f6bdda778f98ff4ecc55e62f"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
    include.install Dir["include/*"]
    doc.install "gbdk_manual.pdf", "sdccman.pdf", "asmlnk_manual.txt", "ChangeLog", "README"
    doc.install "licenses"
    prefix.install "examples"
    libexec.install Dir["libexec/*"]
  end

  test do
    system "#{bin}/lcc", "--version"
  end
end
