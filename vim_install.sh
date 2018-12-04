# On Linux systems, packaged Vim typically has only one of either python or python3 enabled.
# It is possible for both to be enabled (using python/dyn and python3/dyn), but during a session, only one can be used.

# Installation Guides:
# 1. cd vim/
# 2. make distclean
# 3. ./configure (See below)
# 4. make
# 5. make install
# 6. For check python support version, run "vim --version | grep python"
#    Note that some plugins imported by vimrc can only be supported by python2

../configure \
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
