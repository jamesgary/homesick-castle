homesick-castle
===============

See [technicalpickles/homesick](https://github.com/technicalpickles/homesick) for setup. I'm assuming it'll go something like this:

```shell
gem install homesick
homesick clone git://github.com/jamesgary/homesick-castle.git
cd homesick-castle

# I'm packin' submodules.
git submodule init
git submodule sync
git submodule update

homesick symlink homeside-castle
```
