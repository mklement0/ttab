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
