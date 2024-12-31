cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.10.3'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "ddd3009b7f680d96211036e4c1a9af01c575ff5f9ef093ef7102e69aef6bf334"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "351819f8353c4f34f4928bddd2ab92c33f2a8976e9310a87a8fb794e2ae69104"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
