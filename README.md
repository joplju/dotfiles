# Adding a new plugin
```
git submodule add <url> vim/pack/jjoplin/start/<plugin_name>
git add .
git commit
```

# Updating all plugins
```
git submodule update --remote --merge
git commit
```

# Removing a plugin
```
git submodule deinit vim/pack/jjoplin/start/<plugin_name>
git rm vim/pack/jjoplin/start/<plugin_name>
rm -Rf .git/modules/vim/pack/jjoplin/start/<plugin_name>
git commit
```
