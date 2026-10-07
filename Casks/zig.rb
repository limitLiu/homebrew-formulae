cask 'zig' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :aarch64
  version '0.17.0'

  name 'Zig Language'
  homepage 'https://ziglang.org/'

  case architecture
  when :x86_64
    sha256 "4f9a1c5269aa17ebda5e6d3c2b89d6cbf36f7d2b22a0306e9ab98f25f95529c6"
    url "https://ziglang.org/download/#{version}/zig-x86_64-macos-#{version}.tar.xz"
  when :aarch64
    sha256 "b607e9b9234790a008116ae5bdb71c6243b84b9fb42a53a9e70fde41c06c536a"
    url "https://ziglang.org/download/#{version}/zig-aarch64-macos-#{version}.tar.xz"
  else
    raise "Unsupported architecture"
  end

  binary 'zig-' + architecture.to_s + "-macos-#{version}/zig"
end
