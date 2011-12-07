# Bop Gun Emacs

On Guard! Defend yourself! From having to do to much actual text
editing, baby!

## Turn me loose!

Where do you get the bop-gun funk from?

    cd ~
    git clone https://github.com/aredington/bop-gun.git

## Let's shoot them with our bop-guns!

Next you need to initialize the config. This involves git submodules
getting bootstrapped once by you, el-get uses git submodules and
manages them for you after it is set up.

    cd bop-gun
    git submodule init
    git submodule update

## We gotta get over the hump...

Create a symlink in your home dir named .emacs.d pointing to bop-gun

    ln -s bop-gun .emacs.d

## We shall overcome

Start up emacs and let it pull down all the dependencies, there's a
lot of them. It isn't necessarily likely to boot up cleanly on the
first boot, but if you close emacs and reopen it, it probably will.

## Endangered species

The el-get recipe for slime depends on cvs. You might need to install
that, otherwise you could just roll without slime support.
