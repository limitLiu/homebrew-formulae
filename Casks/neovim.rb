cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.10.2'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "8be3960d6ed843121a8d00af38d47ef6757824fc05a50a9bc240d678d61a5463"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "cd3e2e97fee285c41016cece51e67e8174df1dc577b89bc04063b2068ccdaea0"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
