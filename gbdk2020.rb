class Gbdk2020 < Formula
  desc "Game Boy Development Kit 2020"
  homepage "https://github.com/gbdk-2020/gbdk-2020"

  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64

  case architecture
  when :x86_64
    sha256 "c796089c03f64153cf67c49568416ce05ac1865d2eac59ae4c58445b974eb619"
    url "https://github.com/gbdk-2020/gbdk-2020/releases/download/4.3.0/gbdk-macos.tar.gz"
  when :arm64
    sha256 "d8300880ef65e291b226db6c82e116f669aff294f1bea506c41729e8cc86a1f6"
    url "https://github.com/gbdk-2020/gbdk-2020/releases/download/4.3.0/gbdk-macos-arm64.tar.gz"
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
