cask 'neovim-nightly' do
  version :latest
  sha256 :no_check

  name 'Neovim Nightly'
  homepage 'https://neovim.io/'

  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64

  case architecture
  when :x86_64
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-x86_64.tar.gz"
  when :arm64
    url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
