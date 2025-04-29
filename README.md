# Vim Configuration

Instructions originally sourced [here](https://shapeshed.com/vim-packages/)

## Adding a new plugin
```
git submodule add <url> vim/pack/jjoplin/start/<plugin_name>
git add .
git commit
```

## Updating all plugins
```
git submodule update --remote --merge
git commit
```

## Removing a plugin
```
git submodule deinit vim/pack/jjoplin/start/<plugin_name>
git rm vim/pack/jjoplin/start/<plugin_name>
rm -Rf .git/modules/vim/pack/jjoplin/start/<plugin_name>
git commit
```

# Tmux Configuration
Symlink `tmux/.tmux.conf` into `$HOME`
Then, go into a tmux session and run `C+Space + I` to install all plugins. Remember, your prefix key is C+Space.
Mouse control and scroll is enabled, and default pane and window counting is from 1 instead of 0.

TODO: Can we set up profiles to match window arrangements for my different monitors? Default, Vertical, and Ultrawide?
