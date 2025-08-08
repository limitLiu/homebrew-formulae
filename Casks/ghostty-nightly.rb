cask 'ghostty-nightly' do
  version :latest
  sha256 :no_check

  name 'Ghostty Nightly'
  homepage 'https://ghostty.org/'

  url "https://github.com/ghostty-org/ghostty/releases/download/tip/ghostty-macos-universal.zip"

  app "Ghostty.app"
end
