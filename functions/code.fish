function a -d 'open file or cwd in VSCode editor'
    # If no argument is passed, open current dir
    if [ (count $argv) -eq 0 ]
        code .
    else
        code $argv
    end
end