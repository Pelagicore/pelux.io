# pelux.io

Source code repo for the pelux.io website

## How to build the web site locally

This website uses [jekyll](https://jekyllrb.com/) to build static
HTML. You'll need some dependencies to build the site locally. These
dependencies are best to pull from upstream since they rely on
versions that are known to work together. Install the gems jekyll
bundler and minima this way;

    sudo gem install jekyll bundler minima

These are the steps to build the web site locally:

    git clone <git repo url>
    cd pelux.io
    bundle install
    bundle exec jekyll serve
    
This will compile the markdown code and start a server at [http://127.0.0.1:4000/](http://127.0.0.1:4000/) which you can then open in your browser.

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
