![Accenture's Logo](https://www.accenture.com/t20180820T080654Z__w__/br-pt/_acnmedia/Accenture/Dev/Redesign/Acc_Logo_Black_Purple_RGB.PNG "Accenture")

# SKY QA Web Test

Test automation leveling challenge

---

![](https://img.shields.io/badge/python-v.3.7-blue.svg)
![](https://img.shields.io/badge/pypi-v.21.2-blue.svg)

---

## Summary
1. [About](https://github.com/j-a-machado/sky-qa-web-test#1-about)
2. [Stack used in this project](https://github.com/j-a-machado/sky-qa-web-test#2-stack-used-in-this-project)
3. [Steps for automation test](https://github.com/j-a-machado/sky-qa-web-test#3-steps-for-automation-test)
4. [How to run](https://github.com/j-a-machado/sky-qa-web-test#4-how-to-run)
5. [Notes](https://github.com/j-a-machado/sky-qa-web-test#5-notes)

---

## 1. About
The test consists of building a web test automation, based on the exposed scenario, with the following guidelines :
* Avoid hard code;
* Use Page Object;
* Language: Any language but with Ruby or JAVA preferences

---

## 2. Stack used in this project:
* Pip 21.2.4
* Python 3.9.7
* Robot Framework 4.1.1
* SeleniumLibrary 5.1.3

---

## 3. Steps for automation test:
1. Enter the site http://www.sky.com.br/
2. Access 'Programação'
3. Select the schedule that is currently on
4. Validate if the text and time that appear in the schedule is the same that appears in the modal

---

## 4. How to run:

### 4.1. Preconditions:

#### 4.1.1. Make sure you have Robot Framework, SeleniumLibrary and Python installed
A precondition for running the tests is having [Robot Framework](http://robotframework.org/) and [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) installed, and they in turn require [Python](http://python.org/). Robot Framework [installation instructions](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst) cover both Robot and Python installations, and SeleniumLibrary has its own [installation instructions](https://github.com/robotframework/SeleniumLibrary#installation).

In practice it is easiest to install Robot Framework and SeleniumLibrary along with its dependencies using [pip](http://pip-installer.org/) package manager. Once you have pip installed, all you need to do is running these commands:

`pip install -r requirements.txt`

#### 4.1.2. Make sure you have the right driver file.

Here is the [documentation](https://www.selenium.dev/selenium/docs/api/py/index.html#drivers) to know if you have the right driver and how to install.

The browser that is used is controlled by `${browser}` variable defined in [resource.robot](https://github.com/j-a-machado/sky-qa-web-test/blob/main/Test/Web/Functional/resource/resource.robot) resource file.

Firefox browser is used by default, but that can be easily overridden from the command line:

```
robot --variable BROWSER:Chrome login_tests

robot --variable BROWSER:IE login_tests
```

Consult [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) documentation about supported browsers.

#### 4.1.3. Clone this repository.

```
git clone https://github.com/j-a-machado/qa-accenture.git
```

### 4.2. Run the test

* Open Terminal, make sure you are in the cloned folder of this repository and you can use the following command line to run the test:

```
cd Test/Web/Functional/Test-Case
robot -d ../results Validate_Schedule.robot
```

---

## 5. Notes
This project was created with Visual Studio Code in a MacOS setup. Maybe some changes are needed to make the tests run in another setups.