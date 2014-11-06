THISDIR=$(dirname $0)
$THISDIR/setup_vim.sh

if [[ ! -f ~/.tmux.conf ]]
then
    ln -s $THISDIR/tmux.conf ~/.tmux.conf;
fi
