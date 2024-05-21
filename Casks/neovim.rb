cask 'neovim' do
  architecture = Hardware::CPU.intel? ? :x86_64 : :arm64
  version '0.10.0'

  name 'Neovim Stable'
  homepage 'https://neovim.io/'

  case architecture
  when :x86_64
    sha256 "ac4dc050f83e8537cfad3cbaf61ca4e5870ed30a7d0187cdaa33f8fa421aca1f"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-x86_64.tar.gz"
  when :arm64
    sha256 "e00452adbe1e90fb8c2d9bd41855b3f585bf6e2db31b9c35456d6253b0a152dd"
    url "https://github.com/neovim/neovim/releases/download/v#{version}/nvim-macos-arm64.tar.gz"
  else
    raise "Unsupported architecture"
  end

  binary 'nvim-macos-' + architecture.to_s + '/bin/nvim'
end
