class Gbdk2020 < Formula
  desc "Game Boy Development Kit 2020"
  homepage "https://github.com/gbdk-2020/gbdk-2020"
  version '4.5.0'

  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64

  case architecture
  when :x86_64
    sha256 "1aa549d12032d8f6509d11923bb28b1a453098f42597feb378e9a42541f8fd89"
    url "https://github.com/gbdk-2020/gbdk-2020/releases/download/#{version}/gbdk-macos.tar.gz"
  when :arm64
    sha256 "289ee60e46c5a2785a21e35533f84a5131ed4a063b21b0dbdedc9a10af15bf78"
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
