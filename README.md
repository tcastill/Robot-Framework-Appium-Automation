# Python Automation using Robot Framework and Appium

This automation will demonstrate how to utilize the robot framework using python and appium to simulate tests on a mobile phone.

## Technology Stack

Python 3

[Robot Framework](https://robotframework.org/)

## Run Commands
Running the tests can be run by python scripts for tests starting with "run" following a test argument. The script demonstrates the differnt types of run commands that can be used with robot framework.

```run
one                                          # run single test
two                                          # runs two tests
folder                                       # runs everything in the test folder
random                                       # runs tests in random order
or                                           # runs one of the 2 tags provided in the script
and                                          # runs tests that have both tags
```

Example:
```run
python run.py random
```

## Invocations
How to run in the command line
```run
--logLevel                                   # INFO, DEBUG, TRACE will run those log level types e.g. --loglevel INFO
-d                                           # Command to export the path of your reports e.g. -d Output
```

## Appium
- Start appium after installation on a terminal
  - $appium
  - Robot framework can then call keywords using appium to interact with your emulator or device
- Use appium studio to configure new phones or sdk


## Run Tests ##
- Start appium
- execute run.py with test tag
