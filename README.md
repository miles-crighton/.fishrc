Personal config files for fish shell

## Instructions

On new system run `setup.sh`, it'll install fish and any plugins or utility files

_Then_

Run `./copy.fish` to copy files to `~/config/.fish`

_Alternatively_

Run `./link.fish` to symlink files to `~/config/.fish`

## Structure

`functions/` - Includes various fish utility functions

`inc/` - Config files to be sourced on shell initialization

`config.fish` - Run on a shell boot

`link.fish` - Symlinks required files to Fish's config dir

`copy.fish` - Copy required files to Fish's config dir

# Acknowledgements

Pretty much a fork of [phette23's fishrc](https://github.com/phette23/fishrc) for the moment. Big thanks to them.
