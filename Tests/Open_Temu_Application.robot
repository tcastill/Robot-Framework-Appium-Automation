*** Settings ***
Library  AppiumLibrary

*** Test Cases ***
Open_Application
    Open Application    http://localhost:4723/wd/hub    appium:Android    platformName=Android    deviceName=Android    appPackage=com.android.wallpaper.livepicker    appActivity=com.android.wallpaper.livepicker.LiveWallpaperActivity    automationName=UiAutomator2

Close_Application
    Close All Applications