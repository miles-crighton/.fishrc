#!/usr/bin/env fish

# Variables for source and dest paths
set --local config ~/.config/fish/
set --local src (pwd)

# Symlink config.fish
ln -s $src/config.fish $config

# Symlink /inc
mkdir -p $config/inc
ln -s $src/inc/* $config/inc

# Symlink /functions
mkdir -p $config/functions
ln -s $src/functions/* $config/functions