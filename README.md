# Scroll Through Spaces on MacOS WIP
When the user's mouse is on the menu bar, scrolling will move through spaces.
This script gives macOS one of my favorite features of Linux's GNOME Desktop Environment.

# Installation

1) Download and install Hammerspoon

  `brew install --cask hammerspoon`

 or `https://github.com/Hammerspoon/hammerspoon/releases/latest`

2) Enable Accessibility access for Hammerspoon
 
3) Click on the Hammerspoon icon on the menu bar and select open config

4) Paste the contents of `script.lua` into the opened config file

5) Save the file and click on the hammerspoon icon again and select reload config

6) You can now scroll though spaces when the mouse hoveringover over the menu bar

# Considerations

1) This script uses the default shortcuts for moving spaces left and right, if you have changed the shortcuts in the settings you will have to modify the script to your new shortcuts

2)  This script currently has no way of detecting fullscreen apps and will work even if the menu bar is not visible
