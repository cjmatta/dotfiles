function myreadlink() {
    (
      cd $(dirname $1)         # or  cd ${1%/*}
        echo $PWD/$(basename $1) # or  echo $PWD/${1##*/}
          
    )
}
THISDIR=$(dirname $(myreadlink $0));
$THISDIR/setup.sh

if [[ ! -h ~/.gitconfig ]]
then
    ln -s $THISDIR/gitconfig_work ~/.gitconfig;
fi
