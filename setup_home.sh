THISDIR=$(dirname $0)
$THISDIR/setup.sh

if [[ ! -f ~/.gitconfig ]]
then
    ln -s $THISDIR/gitconfig ~/.gitconfig;
fi
