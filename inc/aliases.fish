# Improved commands
alias cp 'cp -Rv'
alias ls 'ls -ACFG'
alias ll 'ls -alGF'
alias grep 'grep'
alias mkdir 'mkdir -pv'
alias mv 'mv -v'
alias wget 'wget -c'

# Functions as aliases

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

function v -d 'Vim alias'
    if [ (count $argv) -eq 0 ]
        nvim .
    else
        nvim $argv
    end
end

## Utils

function ip -d 'get your external IP (from ifconfig.me)'
    curl ifconfig.me/ip
end

function urlencode -d 'URL-encode strings'
    python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);" $argv
end
