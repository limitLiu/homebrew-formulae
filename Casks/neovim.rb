cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.11.4'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "567b89138c29386f67a00fc8e26c6469c8bf0e5707dfea5e3fbaf4e21294d9eb"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "2de9623a4aa8cedf85c51e33bf8e85e05f6f291b923cd666c04704ccf164e8b7"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
