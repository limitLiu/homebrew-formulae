cask 'zig' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :aarch64
  version '0.15.2'

  name 'Zig Language'
  homepage 'https://ziglang.org/'

  case architecture
  when :x86_64
    sha256 "375b6909fc1495d16fc2c7db9538f707456bfc3373b14ee83fdd3e22b3d43f7f"
    url "https://ziglang.org/download/#{version}/zig-x86_64-macos-#{version}.tar.xz"
  when :aarch64
    sha256 "3cc2bab367e185cdfb27501c4b30b1b0653c28d9f73df8dc91488e66ece5fa6b"
    url "https://ziglang.org/download/#{version}/zig-aarch64-macos-#{version}.tar.xz"
  else
    raise "Unsupported architecture"
  end

  binary 'zig-' + architecture.to_s + "-macos-#{version}/zig"
end
