# homebrew-tap

Homebrew formulae for reidg44's tools.

```bash
brew install reidg44/tap/aretheydown
```

| Formula       | Source                                                      |
| ------------- | ----------------------------------------------------------- |
| `aretheydown` | [reidg44/aretheydown](https://github.com/reidg44/aretheydown) |

`platform-status` was renamed to `aretheydown` (`formula_renames.json`), so `brew upgrade` moves an old install over.

To release a new version, set `tag:` and `revision:` in the formula to the new tag and its commit, push, then `brew update && brew upgrade <formula>`.
