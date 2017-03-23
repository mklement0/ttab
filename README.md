[![npm version](https://img.shields.io/npm/v/ttab.svg)](https://npmjs.com/package/ttab) [![license](https://img.shields.io/npm/l/ttab.svg)](https://github.com/mklement0/ttab/blob/master/LICENSE.md)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

**Contents**

- [ttab &mdash; open a new Terminal.app / iTerm2.app tab or window](#ttab-&mdash-open-a-new-terminalapp--iterm2app-tab-or-window)
- [Installation](#installation)
  - [Installation from the npm registry](#installation-from-the-npm-registry)
  - [Manual installation](#manual-installation)
- [Examples](#examples)
- [Usage](#usage)
- [License](#license)
  - [Acknowledgements](#acknowledgements)
  - [npm dependencies](#npm-dependencies)
- [Changelog](#changelog)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# ttab &mdash; open a new Terminal.app / iTerm2.app tab or window

A [macOS (OS X)](https://www.apple.com/osx/) CLI for programmatically opening a new terminal tab/window in the standard terminal application, `Terminal`, 
or in popular alternative [`iTerm2`](http://www.iterm2.com/), optionally with a command to execute and/or a specific title and specific display settings.

Note: `iTerm2` support is experimental in that it is currently not covered by the automated tests run before every release.


# Installation

**Important**: Irrespective of installation method, `Terminal` / `iTerm2` (`iTerm.app`) needs to be granted _access for assistive devices_ in order for `ttab` to function properly, which is a _one-time operation that requires administrative privileges_.  
If you're not prompted on first run and get an error message instead, go to `System Preferences > Security & Privacy`, tab `Privacy`, select `Accessibility`, unlock, and make sure `Terminal.app` / `iTerm.app` is in the list on the right and has a checkmark.  
For more information, see [Apple's support article on the subject](https://support.apple.com/en-us/HT202802)

## Installation from the npm registry

With [Node.js](http://nodejs.org/) or [io.js](https://iojs.org/) installed, install from the [npm registry](https://www.npmjs.com/package/ttab):

    [sudo] npm install ttab -g

**Note**:

* Whether you need `sudo` depends on how you installed Node.js / io.js and whether you've [changed permissions later](https://docs.npmjs.com/getting-started/fixing-npm-permissions); if you get an `EACCES` error, try again with `sudo`.
* The `-g` ensures [_global_ installation](https://docs.npmjs.com/getting-started/installing-npm-packages-globally) and is needed to put `ttab` in your system's `$PATH`.

## Manual installation

* Download [this `bash` script](https://raw.githubusercontent.com/mklement0/ttab/stable/bin/ttab) as `ttab`.
* Make it executable with `chmod +x ttab`.
* Move it to a folder in your `$PATH`, such as `/usr/local/bin`.

# Examples

```shell
# Open a new tab in the current terminal window.
ttab

# Open a new tab in a new terminal window.
ttab -w 

# Open a new tab and execute the specified command before showing the prompt.
ttab ls -l "$HOME/Library/Application Support"

# Open a new tab and execute *multiple* commands in it - note how the entire
# command line is specified as *single, quoted string*.
ttab 'git branch; git status'

# Open a new tab, switch to the specified dir., then execute the specified 
# command before showing the prompt.
ttab -d ~/Library/Application\ Support ls -1 

# Open a new tab with title 'How Green Was My Valley' and settings 'Grass'.
ttab -t 'How Green Was My Valley' -s Grass

# Open a new tab and execute the specified script before showing the prompt.
ttab /path/to/someScript 

# Open a new tab, execute the specified script, and exit.
ttab exec /path/to/someScript

# Open a new tab, execute a command, wait for a keypress, and exit.
ttab 'ls "$HOME/Library/Application Support"; echo Press a key to exit.; read -rsn 1; exit'

# Open a new tab in iTerm2 (if installed).
ttab -a iTerm2 echo 'Hi from iTerm2.'
```

# Usage

Find concise usage information below; for complete documentation, read the [manual online](doc/ttab.md), or, once installed, run `man ttab` (`ttab --man` if installed manually).

<!-- DO NOT EDIT THE FENCED CODE BLOCK and RETAIN THIS COMMENT: The fenced code block below is updated by `make update-readme/release` with CLI usage information. -->

```nohighlight
$ ttab --help


Opens a new terminal tab or window in OS X's Terminal application or iTerm2.

    ttab [-w] [-s <settings>] [-t <title>] [-q] [-g|-G] [-d <dir>] [<cmd> ...]

    -w                  open new tab in new terminal window
    -s <settings>       assign a settings set (profile)
    -t <title>          specify title for new tab
    -q                  clear the new tab's screen
    -g                  create tab in background (don't activate Terminal/iTerm)
    -G                  create tab in background and don't activate new tab
    -d <dir>            specify working directory
    -a Terminal|iTerm2  open tab or window in Terminal.app / iTerm2  
    <cmd> ...           command to execute in the new tab
    "<cmd> ...; ..."    multi-command command line (passed as single operand)

Standard options: --help, --man, --version, --home
```

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the contents of 'LICENSE.md'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

# License

Copyright (c) 2015-2017 Michael Klement <mklement0@gmail.com> (http://same2u.net), released under the [MIT license](https://spdx.org/licenses/MIT#licenseText).

## Acknowledgements

This project gratefully depends on the following open-source components, according to the terms of their respective licenses.

[npm](https://www.npmjs.com/) dependencies below have optional suffixes denoting the type of dependency; the *absence* of a suffix denotes a required *run-time* dependency: `(D)` denotes a *development-time-only* dependency, `(O)` an *optional* dependency, and `(P)` a *peer* dependency.

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the dependencies from 'package.json'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

## npm dependencies

* [doctoc (D)](https://github.com/thlorenz/doctoc)
* [json (D)](https://github.com/trentm/json)
* [marked-man (D)](https://github.com/kapouer/marked-man#readme)
* [replace (D)](https://github.com/harthur/replace)
* [semver (D)](https://github.com/npm/node-semver#readme)
* [tap (D)](https://github.com/isaacs/node-tap)
* [urchin (D)](https://github.com/tlevine/urchin)

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the contents of 'CHANGELOG.md'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

# Changelog

Versioning complies with [semantic versioning (semver)](http://semver.org/).

<!-- NOTE: An entry template for a new version is automatically added each time `make version` is called. Fill in changes afterwards. -->

* **[v0.5.1](https://github.com/mklement0/ttab/compare/v0.5.0...v0.5.1)** (2017-03-23):
  * [doc] Sample command fixed.
  * [dev] Reliability of tests improved.

* **[v0.5.0](https://github.com/mklement0/ttab/compare/v0.4.0...v0.5.0)** (2016-10-01):
  * [new feature] `-q` now allows clearing the "screen" of the new tab after
     opening using `clear`, assuming any command (list) passed succeeded.
  * [enhancement] A quoted multi-command shell command string can now be 
    specified as a single - and only - operand, without having to precede with
    an explicit `eval` command. 
  * [behavior change] If no custom title is specified with `-t <title>`, no
    attempt is made anymore to auto-derive a meaningful tab title from the
    shell command specified, as there is no heuristic that works well in all
    cases.
  * [fix] [Issue #7](https://github.com/mklement0/ttab/issues/7): iTerm2
    now also preserves the current working dir. when opening a new tab in the 
    current window.

* **[v0.4.0](https://github.com/mklement0/ttab/compare/v0.3.1...v0.4.0)** (2016-09-13):
  * [enhancement] `-a Terminal|iTerm2` now allows specifying the target Terminal
    application, which is useful for launching `ttab` from non-terminal applications
    such as [Alfred](http://alfredapp.com).
  * [fix] Specifying a syntactically invalid shell command to execute in the
    new tab now causes `ttab` to report a nonzero exit code.

* **[v0.3.1](https://github.com/mklement0/ttab/compare/v0.3.0...v0.3.1)** (2016-06-03):
  * [enhancement] Support for iTerm2 v3 added (whose AppleScript syntax changed fundamentally)
  * [enhancement] Setting a tab title is now also supported in iTerm2 v2.

* **[v0.3.0](https://github.com/mklement0/ttab/compare/v0.2.1...v0.3.0)** (2016-05-04):
  * [enhancement] Experimental support for iTerm2 (`iTerm.app`) added.

* **[v0.2.1](https://github.com/mklement0/ttab/compare/v0.2.0...v0.2.1)** (2015-09-15):
  * [dev] Makefile improvements; various other behind-the-scenes tweaks.

* **[v0.2.0](https://github.com/mklement0/ttab/compare/v0.1.8...v0.2.0)** (2015-09-14):
  * [enhancement] You can now use embedded (escaped, if necessary) double-quotes inside a multi-command string passed via `eval`.
  * [doc] If installed via the npm registry, a man page is now installed (view with `man ttab`); if installed manually, `ttab --man`
    shows a plain-text version. `ttab -h` now only prints concise, single-page usage information.

* **[v0.1.8](https://github.com/mklement0/ttab/compare/v0.1.7...v0.1.8)** (2015-09-11):
  * [doc] Incorrect new-window option corrected in examples.
  * [doc, dev] Read-me improved together with the Makefile to turn off syntax highlighting for the CLI help chapter.

* **[v0.1.7](https://github.com/mklement0/ttab/compare/v0.1.6...v0.1.7)** (2015-06-26):
  * [doc] Read-me: npm badge changed to shields.io; license badge added.
  * [dev] Makefile updated.

* **v0.1.6** (2015-06-01):
  * [doc] Read-me improvements; typo in CLI usage help fixed.

* **v0.1.5** (2015-06-01):
  * [doc] Improved CLI usage help.

* **v0.1.4** (2015-06-01):
  * [doc] Improved CLI usage help; keywords added to `package.json`.
  * [dev] `make browse` now opens the GitHub repo in the default browser.

* **v0.1.3** (2015-06-01):
  * [fix] The -g and -G options again correctly do not activate Terminal.app when creating the desired tab.
  * [enhancement] Option parsing now accepts option-arguments directly attached to the option.
  * [dev] Tests added.

* **v0.1.2** (2015-06-01):
  * [doc] Manual-installation link and instructions fixed; examples fixed.

* **v0.1.1** (2015-06-01):
  * [doc] README.md improved with respect to manual installation instructions.

* **v0.1.0** (2015-06-01):
  * Initial release.
