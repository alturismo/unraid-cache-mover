# unraid-cache-mover
  Plugin to move playing Media Files from array disks to a pool device in user Share
  while watching and keep them there by rules, incl. live switching in background.

## Installation
Plugins > Install Plugin (or it can be installed from the Community Apps plugin)
```
https://raw.githubusercontent.com/alturismo/unraid-cache-mover/master/cache-mover.plg
```

## Usage
once setted up, Media Files from Array disks (HDD) can be copied or moved to a pool ssd,
the plugin can either
live switch internally to cache (/mnt/user/... access is mandatory for Media Server, Players, ...) 
hard cut internally file access, Player will stall and you know when to stop, start ... pool reading will be active now
do nothing, you have to manually know when you want to stop, start to use pool instead array disks

### Preparation
step by step through the setup options
mover tuning exclusions are buildin, if not in use, consider your mover settings (files get moved back ...)
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
