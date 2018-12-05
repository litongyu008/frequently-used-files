On Linux systems, packaged Vim typically has only one of either python or python3 enabled.
It is possible for both to be enabled (using python/dyn and python3/dyn), but during a session, only one can be used.

Installation Guides:
1. make distclean
2. ./configure (Choose corresponding configure file)
3. make
4. make install
5. For check python support version, run "vim --version | grep python"
   Note that some plugins imported by vimrc can only be supported by python2
