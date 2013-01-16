homesick-castle
===============

See [technicalpickles/homesick](https://github.com/technicalpickles/homesick) for setup. It goes something like this:

```shell
gem install homesick
homesick clone git://github.com/jamesgary/homesick-castle.git

# Just in case homesick didn't unpack gitmodules correctly...
cd ~/.homesick/repos/homesick-castle
git submodule init
git submodule sync
git submodule update

homesick symlink homesick-castle
```
