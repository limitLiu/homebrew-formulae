cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.11.1'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "485d20138bb4b41206dbcf23a2069ad9560c83e9313fb8073cb3dde5560782e3"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "89a766fb41303dc101766898ad3c4eb6db556e19965582cc164419605a1d1f61"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
