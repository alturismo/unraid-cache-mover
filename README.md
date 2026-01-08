# unraid-cache-mover
  Plugin to move playing Media Files from array disks to a pool device in user Share
  while watching and keep them there by rules, incl. live switching in background.

## Installation
Plugins > Install Plugin (or it can be installed from the Community Apps plugin)
```
https://raw.githubusercontent.com/alturismo/unraid-cache-mover/master/cache-mover.plg
```

## Usage
Once setted up, Media Files from Array disks (HDD) can be copied or moved to a pool ssd.

The plugin can either (switch mode options):
1) `switch` - Live switch internally to cache (/mnt/user/... access is mandatory for Media Server, Players, ...) 
2) `close` - Hard cut file access internally. Player will stall and you will know when to stop/start - Pool reading will then be active now.
3) `nothing` - Do nothing. You have to manually know when you want to stop/start to use pool instead array disks.

### Preparation
step by step through the setup options
mover tuning exclusions are builtin, if not in use, consider your mover settings (files get moved back ...)
```
Settings --> Cache Mover
```

### Usage
SettingsPage, cache-mover.
```
Cache Mover --> go through the listings
```

## Information
Warning, this plugin can also delete existing files, be aware about your settings and pathes
