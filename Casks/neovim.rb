cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.10.4'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "c1405071127b59dbdefc31d9c52e9a5c36db67dcef6dcf83e898aada1f3f778e"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "3d7b07ec9b491d2a3d55167bc1db1cfa96773a1a37e74ea384cb15ab0189223b"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
