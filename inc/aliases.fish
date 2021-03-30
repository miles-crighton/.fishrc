# Improved commands
alias cp 'cp -Rv'
alias ll 'exa -alGFh --git'
alias grep 'grep'
alias mkdir 'mkdir -pv'
alias mv 'mv -v'
alias wget 'wget -c'

# Functions as aliases

function ls -d 'Replace ls with exa'
    exa $argv
end

function cd -d 'Change directory visibly'
    builtin cd $argv
    exa -a
end

## Navigation

function ... -d 'Go up 2 dirs'
	cd ../..
end

function .... -d 'Go up 3 dirs'
	cd ../../..
end

function ..... -d 'Go up 4 dirs'
	cd ../../../..
end

function dl -d 'Go to Downloads'
    cd ~/Downloads
end

function doc -d 'Go to Documents'
    cd ~/Documents
end

function sw -d 'Go to Software'
    cd ~/Software
end

## Shorthands

function cmx -d 'Make file executable'
	chmod +x $argv
end

function g -d 'Alias for (git)'
    git $argv
end

function v -d 'NeoVim alias'
    if [ (count $argv) -eq 0 ]
        nvim .
    else
        nvim $argv
    end
end