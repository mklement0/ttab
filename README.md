[![npm version](https://img.shields.io/npm/v/ttab.svg)](https://npmjs.com/package/ttab) [![license](https://img.shields.io/npm/l/ttab.svg)](https://github.com/mklement0/ttab/blob/master/LICENSE.md)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

**Contents**

- [ttab &mdash; programmatically open a new terminal tab or window](#ttab-mdash-programmatically-open-a-new-terminal-tab-or-window)
- [Installation](#installation)
  - [Installation via Homebrew (macOS only)](#installation-via-homebrew-macos-only)
  - [Installation from the npm registry](#installation-from-the-npm-registry)
  - [Manual installation](#manual-installation)
- [Examples](#examples)
- [Usage](#usage)
- [License](#license)
  - [Acknowledgements](#acknowledgements)
  - [npm dependencies](#npm-dependencies)
- [Changelog](#changelog)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# ttab &mdash; programmatically open a new terminal tab or window

A CLI for Unix-like platforms that programmatically opening a new terminal tab/window in one of the following terminal applications, optionally with a command to execute and/or a specific title and specific display settings (profile).  

* On **[macOS](https://www.apple.com/macos)**: either `Terminal` (the default terminal emulator) or popular alternative [`iTerm2`](http://www.iterm2.com/).
* On **Linux**, [Gnome Terminal](https://help.gnome.org/users/gnome-terminal) (`gnome-terminal`), thanks to a contribution by [@ksvirsky](https://github.com/ksvirsky).
* Note: `ttab` does _not_ support **Windows**; consider using the [Windows Terminal](https://github.com/microsoft/terminal/blob/main/README.md)-based [`wttab`](https://github.com/lalilaloe/wttab) utility there.

Note: `iTerm2` and `gnome-terminal` support is currently not covered by the automated tests run before every release.

# Installation

**Important**: On macOS, irrespective of installation method, `Terminal` / `iTerm2` (`iTerm.app`) needs to be granted _access for assistive devices_ in order for `ttab` to function properly, which is a _one-time operation that requires administrative privileges_.  
If you're not prompted on first run and get an error message instead, go to `System Preferences > Security & Privacy`, tab `Privacy`, select `Accessibility`, unlock, and make sure `Terminal.app` / `iTerm.app` is in the list on the right and has a checkmark.  
For more information, see [Apple's support article on the subject](https://support.apple.com/en-us/HT202802).

## Installation via Homebrew (macOS only)

With [Homebrew](https://brew.sh/) installed, run the following:

```sh
curl -LO https://raw.githubusercontent.com/mklement0/ttab/master/ttab.rb && 
HOMEBREW_NO_AUTO_UPDATE=1 brew install --formula ttab.rb && 
rm ttab.rb
```

<sup>Tip of the hat to [@dsingingwolfboy](https://github.com/singingwolfboy) for inspiring me to add this installation method and providing the original formula, and to [@leemm](https://github.com/leemm) for updating the instructions after Homebrew stopped supporting installing directly from an online `.rb` file.</sup>

Note:

* The Homebrew version may lag behind the npm registry version if later versions relate solely to the Linux-only Gnome Terminal functionality. 
* To remove `ttab` later, run `brew rm ttab`.

## Installation from the npm registry

With [Node.js](http://nodejs.org/) installed, install from the [npm registry](https://www.npmjs.com/package/ttab):

    [sudo] npm install ttab -g

**Note**:

* Whether you need `sudo` depends on how you installed Node.js and whether you've [changed permissions later](https://docs.npmjs.com/getting-started/fixing-npm-permissions); if you get an `EACCES` error, try again with `sudo`.
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
# See the note re use of -t in iTerm2 below.
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


Opens a new terminal tab or window, on macOS in either Terminal.app or  
iTerm2.app; on Linux in Gnome Terminal, if available.

    ttab [-w] [-s <settings>] [-t <title>] [-q] [-g|-G] [-d <dir>] [<cmd> ...]

    -w                  Open new tab in new terminal window.
    -s <settings>       Assign a settings set (profile).
    -t <title>          Specify title for new tab.
    -q                  Clear the new tab's screen.
    -g                  Terminal/iTerm only: create in background (don't
                        activate application).
    -G                  Terminal/iTerm: don't activate new tab and create in
                        background.
                        gnome-terminal: don't activate new tab, except with -w.
    -d <dir>            Specify working directory; -d '' disables inheriting
                        the current dir. in Terminal/iTerm.
    -a Terminal | iTerm Open the new tab in the given terminal app on macOS.
    <cmd> ...           Command to execute in the new tab.
    "<cmd> ...; ..."    Multi-command command line (passed as single operand).

Standard options: --help, --man, --version, --home
```

Note to **iTerm2 users**: The `-t` option for specifying a title only works if
the new tab's active profile is configured to show the session name in the
title, which can be configured via the Preferences dialog as shown by
@francis-lookback [here](https://github.com/mklement0/ttab/issues/23#issuecomment-645210109).

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the contents of 'LICENSE.md'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

# License

Copyright (c) 2015-2021 Michael Klement <mklement0@gmail.com> (http://same2u.net), released under the [MIT license](https://spdx.org/licenses/MIT#licenseText).

## Acknowledgements

This project gratefully depends on the following open-source components, according to the terms of their respective licenses.

[npm](https://www.npmjs.com/) dependencies below have optional suffixes denoting the type of dependency; the *absence* of a suffix denotes a required *run-time* dependency: `(D)` denotes a *development-time-only* dependency, `(O)` an *optional* dependency, and `(P)` a *peer* dependency.

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the dependencies from 'package.json'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

## npm dependencies

* [doctoc (D)](https://github.com/thlorenz/doctoc#readme)
* [json (D)](https://github.com/trentm/json#readme)
* [marked (D)](https://marked.js.org)
* [marked-man (D)](https://github.com/kapouer/marked-man#readme)
* [replace (D)](https://github.com/ALMaclaine/replace#readme)
* [semver (D)](https://github.com/npm/node-semver#readme)
* [tap (D)](http://www.node-tap.org/)
* [urchin (D)](https://github.com/tlevine/urchin)

<!-- DO NOT EDIT THE NEXT CHAPTER and RETAIN THIS COMMENT: The next chapter is updated by `make update-readme/release` with the contents of 'CHANGELOG.md'. ALSO, LEAVE AT LEAST 1 BLANK LINE AFTER THIS COMMENT. -->

# Changelog

Versioning complies with [semantic versioning (semver)](http://semver.org/).

<!-- NOTE: An entry template for a new version is automatically added each time `make version` is called. Fill in changes afterwards. -->

* **[v0.7.2](https://github.com/mklement0/ttab/compare/v0.7.1...v0.7.2)** (2021-10-26):
  * [fix] for #39; `ttab` now works correctly when iTerm's "Exclude from Dock and ⌘-Tab Application Switcher" preference is enabled, albeit without support for `-g` and `-G`, for technical reasons.

* **[v0.7.1](https://github.com/mklement0/ttab/compare/v0.7.0...v0.7.1)** (2021-04-06):
  * [fix] Fix for #13: `-g` and `-G` now work in macOS Big Sur too.

* **[v0.7.0](https://github.com/mklement0/ttab/compare/v0.6.1...v0.7.0)** (2020-08-24):
  * [enhancement] Thanks to @ksvirsky, `ttab` is now also available on Linux, assuming `gnome-terminal` is available.

* **[v0.6.1](https://github.com/mklement0/ttab/compare/v0.6.0...v0.6.1)** (2017-11-08):
  * [fix] macOS 10.13 (High Sierra compatibility), which makes `-G` work again.
  * [installation] Homebrew formula added (added post-release, on 2019-12-22).

* **[v0.6.0](https://github.com/mklement0/ttab/compare/v0.5.1...v0.5.2)** (2017-06-21):
  * [enhancement] `-d ''` now prevents `ttab` from implicitly changing to what
    it thinks the working directory should be; useful for creating tabs/windows
    that set their own working directory.

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
