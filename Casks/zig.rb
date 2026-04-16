cask 'zig' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :aarch64
  version '0.16.0'

  name 'Zig Language'
  homepage 'https://ziglang.org/'

  case architecture
  when :x86_64
    sha256 "0387557ed1877bc6a2e1802c8391953baddba76081876301c522f52977b52ba7"
    url "https://ziglang.org/download/#{version}/zig-x86_64-macos-#{version}.tar.xz"
  when :aarch64
    sha256 "b23d70deaa879b5c2d486ed3316f7eaa53e84acf6fc9cc747de152450d401489"
    url "https://ziglang.org/download/#{version}/zig-aarch64-macos-#{version}.tar.xz"
  else
    raise "Unsupported architecture"
  end

  binary 'zig-' + architecture.to_s + "-macos-#{version}/zig"
end
