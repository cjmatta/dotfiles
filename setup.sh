function myreadlink() {
    (
      cd $(dirname $1)         # or  cd ${1%/*}
        echo $PWD/$(basename $1) # or  echo $PWD/${1##*/}
          
    )
}

THISDIR=$(dirname $(myreadlink $0));
if [[ ! -f ~/.tmux.conf ]]
then
    ln -s $THISDIR/tmux.conf ~/.tmux.conf;
    ln -s $THISDIR/tmux ~/.tmux;
fi
