# Figure out how to automatically update ttab.rb for Homebrew on every new release

URL and sha256 hash must be updated for every release.

**Manual instructions** for now:

* Commit the tagged release in order to make GitHub generate the new version's *.tar.gz package.

* Update the `*.rb` file in terms of initially _just_ the URL; e.g., for `0.7.2`:
  * `url "https://github.com/mklement0/ttab/archive/v0.7.2.tar.gz"`

* Use the formula *locally*, which predictably _fails_ due to the outdated hash, but the error message will report the _new_ hash:

```bash
HOMEBREW_NO_AUTO_UPDATE=1 brew install --formula ./ttab.rb
```

OR

```powershell
$env:HOMEBREW_NO_AUTO_UPDATE=1; brew install --formula ./ttab.rb
```

* Copy the new hash from the error message and update the `*.rb` file again, with the new hash.

* Run the formual *locally* again, as above, which should now succeed.

  * Verify that `rreadlink "$(which ttab)"` shows that `/usr/local/bin/ttab` links to the correct version.

* Commit and push.


# Consider supporting PowerShell

Note: The problems relate to specifying a startup command for the new tab:

* On macOS, even if no user-specified startup command is given, an automatically constructed one is used for technical reasons, namely to ensure preserving the caller's working directory.

* On Linux, only user-specified startup commands are affected, because gnome-terminal automatically preserves the caller's working dir.

Specific startup command problems:

* gnome-terminal (Linux):

  * The `\`-escaping of spaces and POSIX shell metacharacters performed by `ttab` makes even explicit calls to the PowerShell CLI (e.g., `ttab --print-script exec pwsh -noexit -c 'get-date; ls'`).
  * Short of using `pwsh -EncodedCommand <base64-encoded-command>`, which is obviously impractical, there is **currently no workaround**.

* Terminal / iTerm (macOS):

  * BUG: The AppleScript commands that are supposed to submit startup commands are only *pasted* on the new tab's command line, not also *submitted*, due to a bug as of PowerShell Core 7.1.0-preview.7 *in combination with* PSReadLine as of 2.0.4 - doesn't happen if PSReadLine isn't loaded.
  !! THE PROBLEM DOES *NOT* OCCUR in PowerShell Core 7.0.3, neither with the in-box PSReadLine 2.0.2 nor with PSReadLine 2.0.4 !!

  * CONCEPTUAL PROBLEM: Passing a single argument that isn't an executable (alone), which includes argument-less PowerShell cmdlet calls, is currently pasted and submitted via AppleScript as an `eval` call with a POSIX-shell-metacharacters-escaped-with-`\` string, neither of which PowerShell understands.
  Executable calls with individual arguments that _require quoting_ (e.g., `ttab Get-ChildItem '/Library/Application Support'`) break due to the `\`-escaping.
  The challenge is that we have no (easy) way of knowing what shell the target profile (settings) is configured to use.

  * Short of using `pwsh -EncodedCommand <base64-encoded-command>`, which is obviously impractical, there is **currently no workaround**.
