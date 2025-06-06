cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.11.2'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "f51b4601a390c07ecd0bdf46d52c060aba88eadbb2ac3a25f2d953f2ce138d23"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "e14c092d91f81ec5f1d533baae2b20730e93316eb4aafec0d2d00f0e0193d39e"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
