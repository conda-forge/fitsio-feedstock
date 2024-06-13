# configure has a weird choice the ignores LDFLAGS
export CFLAGS="${CFLAGS} ${LDFLAGS}"

# Get an updated config.sub and config.guess
cfitsio_dir=$(ls -1d ./cfitsio-*)
cp $BUILD_PREFIX/share/libtool/build-aux/config.* ${cfitsio_dir}
$PYTHON -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
