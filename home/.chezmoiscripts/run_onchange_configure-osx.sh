#!/usr/bin/env zsh
# NOTE: https://macos-defaults.com
# NOTE: https://qiita.com/keitean/items/6972b8f34636a88bae74

# F1, F2, ... を標準のファンクションキーとして使用する
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true

# 文頭を自動で大文字にしないようにする
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# ライブ変換を無効にする
defaults write com.apple.inputmethod.Kotoeri JIMPrefLiveConversionKey -bool false

# Windows 風のキー操作を有効にする
defaults write com.apple.inputmethod.Kotoeri JIMPrefWindowsModeKey -bool true

# Spotlight のショートカットを無効化する（Raycast を使用するため）
/usr/libexec/PlistBuddy -c "Set :AppleSymbolicHotKeys:64:enabled false" ~/Library/Preferences/com.apple.symbolichotkeys.plist

# トラックパッドの感度を最大にする
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 3

# バッテリー残量をパーセントで表示する
defaults -currentHost write com.apple.controlcenter BatteryShowPercentage -bool true

# Dock のアイコンサイズを 40 にする
defaults write com.apple.dock tilesize -int 40

# Finder の新規ウィンドウで表示される場所をホームディレクトリにする
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Finder のデフォルト表示をカラム形式にする
# （すでに存在しているディレクトリは個別に表示形式を記録しているため、この設定は反映されない）
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Finder でパスバーを表示する
defaults write com.apple.finder ShowPathbar -bool true

# デスクトップのアイコンをグリッドに沿うようにする
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# ファイアウォールを有効化する
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on
