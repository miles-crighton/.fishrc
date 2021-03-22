function search
    set encoded (urlencode $argv)
    open "https://google.com/search?q=$encoded"
end