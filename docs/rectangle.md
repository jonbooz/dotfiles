# Rectangle

[Rectangle](https://rectangleapp.com/) window manager settings live in
`rectangle/com.knollsoft.Rectangle.plist`, installed via the `rectangle` cask in
`install/Brewfile`.

The plist is not in `links`: macOS's preferences daemon replaces a symlinked
plist in `~/Library/Preferences` the next time the app saves a setting, so the
link would silently break. Instead it's copied in and out.

Load the repo's settings (quit Rectangle first; `install/new-mac.sh` does this
for you on a fresh machine):

```sh
defaults import com.knollsoft.Rectangle rectangle/com.knollsoft.Rectangle.plist
```

Save settings changed in the app back to the repo:

```sh
defaults export com.knollsoft.Rectangle - | plutil -convert xml1 -o rectangle/com.knollsoft.Rectangle.plist -
for k in SUHasLaunchedBefore installVersion lastVersion; do
  plutil -remove "$k" rectangle/com.knollsoft.Rectangle.plist 2>/dev/null
done
```

(The removed keys are Rectangle's/Sparkle's version bookkeeping, not settings.)
