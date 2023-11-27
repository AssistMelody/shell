#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title reset navicat
# @raycast.mode inline
# @raycast.refreshTime 10d

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description 重置navicat 试用时间
# @raycast.author Yuanshen
# @raycast.authorURL https://github.com/AssistMelody/shell.git

echo "*******删除试用时间*****"

defaults delete com.navicat.NavicatPremium 91F6C435D172C8163E0689D3DAD3F3E9
defaults delete com.navicat.NavicatPremium B966DBD409B87EF577C9BBF3363E9614
rm -rf ~/Library/Application\ Support/PremiumSoft\ CyberTech/Navicat\ CC/Navicat\ Premium/

/usr/libexec/PlistBuddy -c "Delete :91F6C435D172C8163E0689D3DAD3F3E9" ~/Library/Preferences/com.navicat.NavicatPremium.plist
/usr/libexec/PlistBuddy -c "Delete :B966DBD409B87EF577C9BBF3363E9614" ~/Library/Preferences/com.navicat.NavicatPremium.plist
rm -rf ~/Library/Application\ Support/PremiumSoft\ CyberTech/Navicat\ CC/Navicat\ Premium/.*