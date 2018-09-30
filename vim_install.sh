# On Linux systems, packaged Vim typically has only one of either python or python3 enabled.
# It is possible for both to be enabled (using python/dyn and python3/dyn), but during a session, only one can be used.

# Installation Guides:
# 1. make distclean
# 2. ./configure (See below)
# 3. make
# 4. make install

./configure \
--with-features=huge \
--enable-multibyte \
--enable-luainterp \
--enable-pythoninterp=yes \
--enable-cscope \
--enable-gui=auto \
--enable-gnome-check \
--enable-fontset \
--with-python-config-dir=<python-path>/lib/python2.7/config \
--with-x \
--with-compiledby="$USER" \
--prefix=<installation-path>/
