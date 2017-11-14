# pelux.io

Source code repo for the pelux.io website

## How to build

This website uses [jekyll](https://jekyllrb.com/) to build static HTML. Those
are the steps to build it:

    sudo apt install ruby ruby-dev ruby-bundler zlib1g-dev
    git clone <git repo url>
    cd pelux.io
    bundle install
    bundle exec jekyll serve

This will compile the markdown code and start a server at
[http://localhost:4000/](http://localhost:4000/) which you can then open in your
browser.

If you get errors when building native extensions with bundle, make sure you
have the necessary libraries installed.

## Governance

This repository is maintained and governed by Pelagicore AB.

Maintainer:

- Richard Pannek <richard.pannek@pelagicore.com>

## License and Copyright

Copyright &copy; Pelagicore AB 2017

This work is licensed under the Creative Commons
Attribution-ShareAlike 4.0 International License. To view a copy of
this license, visit http://creativecommons.org/licenses/by-sa/4.0/ or
send a letter to Creative Commons, PO Box 1866, Mountain View, CA
94042, USA.
