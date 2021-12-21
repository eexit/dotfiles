gnubins=(gnu-sed gnu-tar gnu-which grep coreutils)

for bin in "${gnubins[@]}"
do
    P="$(brew --prefix)/opt/$bin/libexec/gnubin:
$P"
done

PATH=$(cat <<EOL
./bin:
$ZSH/bin:
${P:0:-2}:
$PATH
EOL
)

# https://unix.stackexchange.com/a/57128/309427
export PATH=${PATH//$'\n'/}
export PATH="/opt/homebrew/sbin:$PATH"

export MANPATH="$(brew --prefix)/man:$(brew --prefix)/git/man:$MANPATH"
