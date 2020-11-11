# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/libtool/build-aux/config.* ./cfitsio3490
$PYTHON -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
