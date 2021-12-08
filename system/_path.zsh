gnubins=(gnu-sed gnu-tar gnu-which grep)

for bin in "${gnubins[@]}"
do
    P="/usr/local/opt/$bin/libexec/gnubin:$P"
done

export PATH="./bin:/usr/local/bin:/usr/local/sbin:$ZSH/bin:/usr/local/opt/python/libexec/bin:/usr/local/opt/openjdk/bin:/usr/local/opt/coreutils/libexec/gnubin:${P:0:-2}:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
