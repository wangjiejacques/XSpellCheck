# XSpellCheck

XSpellCheck is a Xcode extension for swift code spell check, support `UpperCamelCase`, `lowerCamelCase`, `CAPITALIZED_WITH_UNDERSCORES`, `lowercase_separated_by_underscores`.

![alt tag](https://github.com/wangjiejacques/XSpellCheck/blob/master/example.gif)

# Installation
1. Clone or download the repo
2. Open ``XSpellCheck.xcodeproj``
3. Enable target signing for both the Application and the Source Code Extension using your own developer ID
4. Select the application target and then Product > Archive
5. Export the archive as a macOS App
6. Run the app, then quit (Don't delete the app, put it in a convenient folder)
7. Go to System Preferences -> Extensions -> Xcode Source Editor and enable the XSpellCheck extension
8. The menu-item should now be available from Xcode's Editor menu

# Uninstallation
1. Remove the App, restart Xcode.
