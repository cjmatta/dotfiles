THISDIR=$(dirname $0)
$THISDIR/setup.sh

if [[ ! -f ~/.gitconfig ]]
then
    ln -s $THISDIR/gitconfig_work ~/.gitconfig;
fi
