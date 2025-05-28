class Gbdk2020 < Formula
  desc "Game Boy Development Kit 2020"
  homepage "https://github.com/gbdk-2020/gbdk-2020"
  version '4.4.0'

  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64

  case architecture
  when :x86_64
    sha256 "ba7ffc51c12fd1625fc99850691e0f5312cb6169691d39823c67972e685db9bc"
    url "https://github.com/gbdk-2020/gbdk-2020/releases/download/#{version}/gbdk-macos.tar.gz"
  when :arm64
    sha256 "0c67b5cafff8a617729b77f9383ea41eb864b34f52c2391686c94427936db2df"
    url "https://github.com/gbdk-2020/gbdk-2020/releases/download/#{version}/gbdk-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

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
