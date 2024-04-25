# Python Automation using Robot Framework and Appium

This automation will demonstrate how to utilize the Pytest and Python testing framework to automate two endpoints: https://dictionaryapi.dev/ and https://www.datamuse.com/api/.

## Technology Stack

Python 3

[Robot Framework](https://robotframework.org/)

#[Allure Reporting](http://allure.qatools.ru/)


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

Parallel options
```run
-n auto                                      # will distribute number of workers. e.g. browser windows or api calls
--max-worker-restart number                  # option to limit the number of workers restarts that are allowed
                                             # to disable: --max-worker-restart 0
--maxprocesses=maxprocesses: limit the maximum number of workers to process the tests.
--max-worker-restart: maximum number of workers that can be restarted when crashed (set to zero to disable this feature).
```
Rerun options
```run
--reruns 10                                  # will reruns 10x if failed 
--reruns-delay 5                             # will add a delay of 5ml after a failed run
--dist worksteal
```
## Tag tests
Skip tagging tests
```run
Skip by tag:                                 # @pytest.mark.skip("Skipping as this functionality is broken. Develper is fixing it")
Skip by condition:                           # @pytest.mark.skipif(a>100), reason = "Skipping due to limit reached")    
```

## Reports
All reports are crated within the Output folder
```run
Skip by tag:                                 # @pytest.mark.skip("Skipping as this functionality is broken. Develper is fixing it")
Skip by condition:                           # @pytest.mark.skipif(a>100), reason = "Skipping due to limit reached")    
```

## Appium
- Start appium after installation on a terminal
  - $appium
  - Robot framework can then call keywords using appium to interact with your emulator or device
- Use appium studio to configure new phones or sdk


## Run Tests ##
- Start appium
- execute run.py with test tag