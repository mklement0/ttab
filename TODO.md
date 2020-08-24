# Figure out how to automatically update ttab.rb for Homebrew on every new release

URL and sha256 hash must be updated for every release.

?? Presumably this means that we must make *2* commits:

* Commit the tagged release - *without* the `*.rb` file first - in order to make GitHub generate the *.tar.gz package.

* Wait until that has happened, download the package, and determine its sha256 hash.

* Test the formula locally.

* Update the `*.rb` file and commit it.


