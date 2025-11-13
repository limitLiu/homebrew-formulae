cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.11.5'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "6612760a7037ca2518e456908baf5e43101fa79819d18979fc4d4e8441d9dfa5"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "79143d3b408f7034f90b7cf59af2276de09ef8a4c2f1a28e4c99581b249d3107"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
