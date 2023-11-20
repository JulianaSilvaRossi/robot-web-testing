# ROBOT-WEB-TESTING
Web test project using the robot framework tool

## INSTALLATION

If you already have Python with pip installed, you can simply run:

```bash
    pip install -r .\requirements.txt
```
## USAGE

- resources: Contains resource files, such as external libraries and custom keyword files.
    - config: Contains project configuration files, such as environment variables, general settings, and execution settings.
    - docs: Contains project documentation files
    - pages: Contains files that define Page Object classes, which represent web application pages.
    - results: Contains the result files of executed tests.
    - main.robot: File responsible for implementing the import of libraries in one place.

- tests: Contains test files organized by test type and by page. Within each test file, Page Object classes and keywords defined in resource files are used.

- requirements.txt: File that contains project dependencies and their versions. Installation: 


## AUTHORS

- [@ronymesquita](https://www.github.com/ronymesquita)
- [@JulianaSilvaRossi](https://www.github.com/JulianaSilvaRossi)