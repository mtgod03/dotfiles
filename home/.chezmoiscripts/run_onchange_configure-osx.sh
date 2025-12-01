#!/usr/bin/env bash
# NOTE: https://qiita.com/keitean/items/6972b8f34636a88bae74

# F1, F2, ... を標準のファンクションキーとして使用する
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true

# デスクトップのアイコンをグリッドに沿うようにする
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
