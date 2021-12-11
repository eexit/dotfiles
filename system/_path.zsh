gnubins=(gnu-sed gnu-tar gnu-which grep coreutils)

for bin in "${gnubins[@]}"
do
    P="$(brew --prefix)/opt/$bin/libexec/gnubin:
$P"
done

export PATH="./bin:
$ZSH/bin:
$(brew --prefix)/bin:
$(brew --prefix)/sbin:
$(brew --prefix)/opt/python/libexec/bin:
$(brew --prefix)/opt/openjdk/bin:
${P:0:-2}:
$PATH"

export MANPATH="$(brew --prefix)/man:$(brew --prefix)/git/man:$MANPATH"
