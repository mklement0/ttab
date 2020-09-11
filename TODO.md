# Figure out how to automatically update ttab.rb for Homebrew on every new release

URL and sha256 hash must be updated for every release.

?? Presumably this means that we must make *2* commits:

* Commit the tagged release - *without* the `*.rb` file first - in order to make GitHub generate the *.tar.gz package.

* Wait until that has happened, download the package, and determine its sha256 hash.

* Test the formula locally.

* Update the `*.rb` file and commit it.

# Consider supporting PowerShell

Note: The problems relate to specying a startup command for the new tab:

* On macOS, even if no user-specified startup command is given, an automatically constructed one is used for technical reasons, namely to ensure preserving the caller's working directory.

* On Linux, only user-specified startup commands are affected, because gnome-terminal automatically preserves the caller's working dir.

Specific startup command problems:

* gnome-terminal (Linux):

  * If you want to specify a startup command and PowerShell is not the user's default shell, you must call the PowerShell CLI explicitly, given that `ttab` passes the startup command to `$SHELL -c`, irrespective of what the targeted profile may specify
as the shell to run.

  * Therefore, use `[exec] pwsh -noexit -c ...` explicitly; `exec` will only work if `$SHELL` is a POSIX-compatible shell.
    Omit the `-noexit` for a run-and-exit command.

* Terminal / iTerm (macOS):

  * BUG: The AppleScript commands that are supposed to submit startup commands are only *pasted* on the new tab's command line, not also *submitted*, due to a bug as of PowerShell Core 7.1.0-preview.7 *in combination with* PSReadLine as of 2.0.4 - doesn't happen if PSReadLine isn't loaded.
  !! THE PROBLEM DOES *NOT* OCCUR in PowerShell Core 7.0.3, neither with the in-box PSReadLine 2.0.2 nor with PSReadLine 2.0.4 !!

  * CONCEPTUAL PROBLEM: Passing a single argument that isn't an executable (alone), which includes argument-less PowerShell cmdlet calls, is currently pasted and submitted via AppleScript as an `eval` call with a POSIX-shell-metacharacters-escaped-with-`\` string, neither of which PowerShell understands.
  Executable calls with individual arguments that _require quoting_ (e.g., `ttab Get-ChildItem '/Library/Application Support'`) break due to the `\`-escaping.
  The challenge is that we have no (easy) way to know what shell the target profile (settings) is configured to use.

  * Short of using`pwsh -EncodedCommand <base64-encoded-command>`, which is obviously impracticel, there is **currently no workaround**.
