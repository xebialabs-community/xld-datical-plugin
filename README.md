# xld-datical-plugin

[![Build Status][xld-datical-plugin-travis-image] ][xld-datical-plugin-travis-url]
[![Codacy Badge][xld-datical-plugin-codacy-image] ][xld-datical-plugin-codacy-url]
[![Code Climate][xld-datical-plugin-code-climate-image] ][xld-datical-plugin-code-climate-url]
[![License: MIT][xlr-datical-plugin-license-image] ][xlr-datical-plugin-license-url]
[![Github All Releases][xld-datical-plugin-downloads-image] ]()


[xld-datical-plugin-travis-image]: https://travis-ci.org/xebialabs-community/xld-datical-plugin.svg?branch=master
[xld-datical-plugin-travis-url]: https://travis-ci.org/xebialabs-community/xld-datical-plugin
[xld-datical-plugin-codacy-image]: https://api.codacy.com/project/badge/Grade/7e66235d52e3447c890c7c2e0ea9edb4
[xld-datical-plugin-codacy-url]: https://www.codacy.com/app/joris-dewinne/xld-datical-plugin
[xld-datical-plugin-code-climate-image]: https://codeclimate.com/github/xebialabs-community/xld-datical-plugin/badges/gpa.svg
[xld-datical-plugin-code-climate-url]: https://codeclimate.com/github/xebialabs-community/xld-datical-plugin
[xlr-datical-plugin-license-image]: https://img.shields.io/badge/License-MIT-yellow.svg
[xlr-datical-plugin-license-url]: https://opensource.org/licenses/MIT
[xld-datical-plugin-downloads-image]: https://img.shields.io/github/downloads/xebialabs-community/xld-datical-plugin/total.svg


This is the integration between XL Deploy and Datical.


## Overview ##

The xld-datical-plugin is a XL Deploy plugin that allows to deploy, rollback, ... datical projects using XL Deploy.

## Installation ##

Place the [latest](https://github.com/xebialabs-community/xld-datical-plugin/releases) released version under the `plugins` dir.

Version 1.8.0 fixes the issue where if database credentials are provided via XLD, then during deployment those username and password are displayed in clear text. This version also adds the capability to store audit database credentials in XLD.

Version 1.7.1 fixes the issue where it cleans out temp directory if deployment fails.

This plugin (1.x.x+) requires XLD 5.1+

## Types ##

+ `datical.Server`: A `udm.BaseContainer` used to deploy datical projects.
    + `host`: the `overthere.Host` that will be used to execute the `hammer` cli tool
    + `home`: Fully qualified location of Datical DB CLI command. (e.g., `C:\DaticalDB\repl\hammer.bat` or `/opt/DaticalDB/hammer`).
    + `driverLocation`: Absolute Path on Build Server to Database Drivers used by Datical DB.
    + `zipLocation`: Absolute Path to 7zip.exe (only applicable on Windows). If provided this one will be used, else the prepackaged one will be used.
    + `envName`: Environment name to be used for forecast and deploy (e.g. XE). If defined on `datical.Server` level, this will be used. Else the deployed value will be used.
    + `username`: Database username when the project has the 'Specify database credentials at operation run time' option set.
    + `password`: Database password when the project has the 'Specify database credentials at operation run time' option set.
+ `datical.Project`
    + `targetPath`: Temporary path where the project should be extracted
    + `envName`: Environment name to be used for forecast and deploy (e.g. XE)
    + `changeids`: The id and (optionally) author of a change set. Only used during destroy operation. If not specified, lastdeploy will be used.
    + `labels`:  The labels to be used during forecast and deploy. For example: `pipeline1 AND test`
    + `reportsLocation`: When set, deploy report will be written to the directory specified. Report is written to the 'Reports' directory by default.
    + `runStatus`: If true, a status step will be added when deploying
    + `runForecast`: If true, a forecast step will be added when deploying
    + `pipeline`: When set, this is the pipeline which will be associated with the deployment for auditing purposes.

## References ##
1. [Datical main website](http://www.datical.com/)



