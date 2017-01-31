# xld-datical-plugin

This is the integration between XL Deploy and Datical.

## CI status ##

[![Build Status][xld-datical-travis-image] ][xld-datical-travis-url]
[![Codacy Badge][xld-datical-codacy-image] ][xld-datical-codacy-url]
[![Code Climate][xld-datical-code-climate-image] ][xld-datical-code-climate-url]

[xld-datical-travis-image]: https://travis-ci.org/xebialabs-community/xld-datical-plugin.svg?branch=master
[xld-datical-travis-url]: https://travis-ci.org/xebialabs-community/xld-datical-plugin
[xld-datical-codacy-image]: https://api.codacy.com/project/badge/Grade/7e66235d52e3447c890c7c2e0ea9edb4
[xld-datical-codacy-url]: https://www.codacy.com/app/joris-dewinne/xld-datical-plugin
[xld-datical-code-climate-image]: https://codeclimate.com/github/xebialabs-community/xld-datical-plugin/badges/gpa.svg
[xld-datical-code-climate-url]: https://codeclimate.com/github/xebialabs-community/xld-datical-plugin


## Overview ##

The xld-datical-plugin is a XL Deploy plugin that allows to deploy, rollback, ... datical projects using XL Deploy.

## Installation ##

Place the [latest](https://github.com/xebialabs-community/xld-datical-plugin/releases) released version under the `plugins` dir.

This plugin (1.x.x+) requires XLD 5.1+

## Types ##

+ `datical.Server`: A `udm.BaseContainer` used to deploy datical projects.
    + `host`: the `overthere.Host` that will be used to execute the `hammer` cli tool
    + `home`: Fully qualified location of Datical DB CLI command. (e.g., `C:\DaticalDB\repl\hammer.bat` or `/opt/DaticalDB/hammer`).
    + `driverLocation`: Absolute Path on Build Server to Database Drivers used by Datical DB.
    + `zipLocation`: Absolute Path to 7zip.exe (only applicable on Windows). If provided this one will be used, else the prepackaged one will be used.
+ `datical.Project`
    + `targetPath`: Temporary path where the project should be extracted
    + `envName`: Environment name to be used for forecast and deploy (e.g. XE)
    + `changeids`: The id and (optionally) author of a change set. Only used during destroy operation. If not specified, lastdeploy will be used.
    + `labels`:  The labels to be used during forecast and deploy. For example: `pipeline1 AND test`

## References ##
1. [Datical main website](http://www.datical.com/)



