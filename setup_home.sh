function myreadlink() {
    (
      cd $(dirname $1)         
        echo $PWD/$(basename $1) 
          
    )
}

THISDIR=$(dirname $(myreadlink $0));
$THISDIR/setup.sh

if [[ ! -h ~/.gitconfig ]]
then
    ln -s $THISDIR/gitconfig_home ~/.gitconfig;
fi
