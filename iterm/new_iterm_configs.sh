#!/usr/bin/env bash

# Disable prompt on quit
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Set font
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Normal Font' DejaVuSansMonoPowerline 18" ~/Library/Preferences/com.googlecode.iTerm2.plist
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Non Ascii Font' DejaVuSansMonoPowerline 18" ~/Library/Preferences/com.googlecode.iTerm2.plist

# Reuse previous session directory
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Custom Directory' Recycle" ~/Library/Preferences/com.googlecode.iTerm2.plist

# Unlimited Scrollback
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Unlimited Scrollback' true" ~/Library/Preferences/com.googlecode.iTerm2.plist

# Mute bell
/usr/libexec/PlistBuddy -c "Set 'New Bookmarks':0:'Silence Bell' true" ~/Library/Preferences/com.googlecode.iTerm2.plist

###
# Word navigation MacOS-like
###

# Delete previously mapped (iTerm Default) option+left and  option+right
/usr/libexec/PlistBuddy -c "Delete 'New Bookmarks':0:'Keyboard Map':'0xf702-0x280000'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Delete 'New Bookmarks':0:'Keyboard Map':'0xf703-0x280000'" ~/Library/Preferences/com.googlecode.iterm2.plist

# option+left
/usr/libexec/PlistBuddy -c "Add 'New Bookmarks':0:'Keyboard Map':'0xf702-0x280000':'Action' integer 10" ~/Library/Preferences/com.googlecode.iTerm2.plist
/usr/libexec/PlistBuddy -c "Add 'New Bookmarks':0:'Keyboard Map':'0xf702-0x280000':'Text' string b" ~/Library/Preferences/com.googlecode.iTerm2.plist

# option+right
/usr/libexec/PlistBuddy -c "Add 'New Bookmarks':0:'Keyboard Map':'0xf703-0x280000':'Action' integer 10" ~/Library/Preferences/com.googlecode.iTerm2.plist
/usr/libexec/PlistBuddy -c "Add 'New Bookmarks':0:'Keyboard Map':'0xf703-0x280000':'Text' string f" ~/Library/Preferences/com.googlecode.iTerm2.plist

# option+delete
/usr/libexec/PlistBuddy -c "Add 'New Bookmarks':0:'Keyboard Map':'0x7f-0x80000':'Action' integer 11" ~/Library/Preferences/com.googlecode.iTerm2.plist
/usr/libexec/PlistBuddy -c "Add 'New Bookmarks':0:'Keyboard Map':'0x7f-0x80000':'Text' string 17" ~/Library/Preferences/com.googlecode.iTerm2.plist

# TODO test merge PlistBuddy command for background and colors

# TODO dark gray background

# <key>Background Color</key>
# <dict>
#   <key>Alpha Component</key>
#   <real>1</real>
#   <key>Blue Component</key>
#   <real>0.065984725952148438</real>
#   <key>Color Space</key>
#   <string>Calibrated</string>
#   <key>Green Component</key>
#   <real>0.065983600914478302</real>
#   <key>Red Component</key>
#   <real>0.065985590219497681</real>
# </dict>

# TODO pastel with dark bg

<key>Ansi 0 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.30978869999999997</real>
# 				<key>Green Component</key>
# 				<real>0.30978869999999997</real>
# 				<key>Red Component</key>
# 				<real>0.30978869999999997</real>
# 			</dict>
# 			<key>Ansi 1 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.37647059999999999</real>
# 				<key>Green Component</key>
# 				<real>0.4235294</real>
# 				<key>Red Component</key>
# 				<real>1</real>
# 			</dict>
# 			<key>Ansi 10 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.67277030000000004</real>
# 				<key>Green Component</key>
# 				<real>1</real>
# 				<key>Red Component</key>
# 				<real>0.80941479999999999</real>
# 			</dict>
# 			<key>Ansi 11 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.7996491</real>
# 				<key>Green Component</key>
# 				<real>1</real>
# 				<key>Red Component</key>
# 				<real>1</real>
# 			</dict>
# 			<key>Ansi 12 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.9982605</real>
# 				<key>Green Component</key>
# 				<real>0.86277559999999998</real>
# 				<key>Red Component</key>
# 				<real>0.71165029999999996</real>
# 			</dict>
# 			<key>Ansi 13 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.99652090000000004</real>
# 				<key>Green Component</key>
# 				<real>0.61330589999999996</real>
# 				<key>Red Component</key>
# 				<real>1</real>
# 			</dict>
# 			<key>Ansi 14 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.99703969999999997</real>
# 				<key>Green Component</key>
# 				<real>0.87631029999999999</real>
# 				<key>Red Component</key>
# 				<real>0.87591359999999996</real>
# 			</dict>
# 			<key>Ansi 15 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>1</real>
# 				<key>Green Component</key>
# 				<real>1</real>
# 				<key>Red Component</key>
# 				<real>1</real>
# 			</dict>
# 			<key>Ansi 2 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.37647059999999999</real>
# 				<key>Green Component</key>
# 				<real>1</real>
# 				<key>Red Component</key>
# 				<real>0.65882350000000001</real>
# 			</dict>
# 			<key>Ansi 3 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.71372550000000001</real>
# 				<key>Green Component</key>
# 				<real>1</real>
# 				<key>Red Component</key>
# 				<real>1</real>
# 			</dict>
# 			<key>Ansi 4 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.99607840000000003</real>
# 				<key>Green Component</key>
# 				<real>0.79607839999999996</real>
# 				<key>Red Component</key>
# 				<real>0.58823530000000002</real>
# 			</dict>
# 			<key>Ansi 5 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.99215690000000001</real>
# 				<key>Green Component</key>
# 				<real>0.4509804</real>
# 				<key>Red Component</key>
# 				<real>1</real>
# 			</dict>
# 			<key>Ansi 6 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.99607840000000003</real>
# 				<key>Green Component</key>
# 				<real>0.77254900000000004</real>
# 				<key>Red Component</key>
# 				<real>0.77647060000000001</real>
# 			</dict>
# 			<key>Ansi 7 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.93353169999999996</real>
# 				<key>Green Component</key>
# 				<real>0.93353169999999996</real>
# 				<key>Red Component</key>
# 				<real>0.93353169999999996</real>
# 			</dict>
# 			<key>Ansi 8 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.4862745</real>
# 				<key>Green Component</key>
# 				<real>0.4862745</real>
# 				<key>Red Component</key>
# 				<real>0.4862745</real>
# 			</dict>
# 			<key>Ansi 9 Color</key>
# 			<dict>
# 				<key>Blue Component</key>
# 				<real>0.69019609999999998</real>
# 				<key>Green Component</key>
# 				<real>0.71372550000000001</real>
# 				<key>Red Component</key>
# 				<real>1</real>
# 			</dict>

# reset the preferences cache
killall cfprefsd
