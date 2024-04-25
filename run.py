import sys
import subprocess
import webbrowser
import os

def oneTest():
    subprocess.Popen('robot -d Output Demo/SampleTest.robot', shell=True)

def twoTest():
    subprocess.Popen('robot -d Output Demo/SampleTest.robot Demo/SampleTest2.robot', shell=True)

def folderTest():
    subprocess.Popen('robot -d Output Demo', shell=True)

def randomTest():
    subprocess.Popen('robot -d Output --randomize All Demo', shell=True)

def byTag():
    subprocess.Popen('robot -d Output -i firstOnly Demo', shell=True)

def withOR():
    subprocess.Popen('robot -d Output -i firstORsecond Demo', shell=True)

def withAND():
    subprocess.Popen('robot -d Output -i thirdANDfourth Demo', shell=True)

def variable():
    subprocess.Popen('robot -d Output -i variable --logLevel TRACE Demo', shell=True)

def phoneTest():
    subprocess.Popen('robot -d Output --logLevel TRACE Tests', shell=True)

def execute(script):
    print(f"You are running test {script}")

    match script:
        case "one":
            oneTest()
        case "two":
            twoTest()
        case "folder":
            folderTest()
        case "random":
            randomTest()
        case "tag":
            byTag()
        case "or":
            withOR()
        case "and":
            withAND()
        case "variable":
            variable()
        case "phone":
            phoneTest()


    webbrowser.open('file://' + os.path.realpath('Output\log.html'))


if __name__ == "__main__":
    test_name = str(sys.argv[1])
    execute(test_name)