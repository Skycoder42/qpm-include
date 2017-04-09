# qpm-include
A small pri file to add includepaths from another project.

This can be useful if you build one project as library and need all of it's additional includepaths (The qmake `INCLUDEPATH` variable) in another project where you use the library. One example would be [QtMvvm](https://github.com/Skycoder42/QtMvvm).

This package is designed to be used with qpm, but can be used without qpm as well.

## Installation
The package is providet as qpm package, [`de.skycoder42.qpm-include`](https://www.qpm.io/packages/de.skycoder42.qpm-include/index.html). To install:

1. Install qpm (See [GitHub - Installing](https://github.com/Cutehacks/qpm/blob/master/README.md#installing))
2. In your projects root directory, run `qpm install de.skycoder42.qpm-include`
3. Include qpm to your project by adding `include(vendor/vendor.pri)` to your `.pro` file

Check their [GitHub - Usage for App Developers](https://github.com/Cutehacks/qpm/blob/master/README.md#usage-for-app-developers) to learn more about qpm.

## Usage
To make it work, simply set the `QPM_INCLUDEPATH` variable **before** adding the `vendor.pri` file to your project. The following example assumes "Library" is another project to import the includepaths from.

```pro
QPM_INCLUDEPATH += <path_to>/Library/vendor/vendor.pri

include(vendor/vendor.pri) # Includes qpm-include as well, if you are using qpm
```
