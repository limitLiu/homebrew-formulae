cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.11.3'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "6ea6a62a611fa6e515a92b1a327dadfd7826d5b3d2c514f1f5ef1de36c710e05"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "17d22826f19fe28a11f9ab4bee13c43399fdcce485eabfa2bea6c5b3d660740f"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
