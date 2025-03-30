cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.11.0'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "30dc06f0e5b945bff4f3a1994608bff912ca4ec249774063eb9d8b0ce30018e5"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "20055d322e80194350ee0e47f1ba5a8016d1cdbe7e283d62f882f640326e18a7"
    url "https://github.com/neovim/neovim/releases/download/stable/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
