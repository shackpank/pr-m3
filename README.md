# pr-m3

"Pull Request Multi Master Merge"

Attempt to bring all open pull requests in a project up to date with the main branch in one command.

If it works, the output will look like this:
```
Switched to branch 'branch'
Everything up-to-date
Switched to branch 'another_branch'
Everything up-to-date
Switched to branch 'master'
```

If anything goes wrong, whatever issues the git executable encountered will just be output. This isn't very complete, but works for the simple case.

## Installation

```
  $ gem install pr-m3
```

## Usage

If your main branch is called "master", you can omit "main-branch".

```
  $ cd /path/to/repo
  $ pr-m3 main-branch
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
