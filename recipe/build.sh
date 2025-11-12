# configure has a weird choice the ignores LDFLAGS
export CFLAGS="${CFLAGS} ${LDFLAGS} -Wl,--whole-archive"

# Get an updated config.sub and config.guess
tarball=$(ls -1d ./cfitsio-*)
tar -xzvf ${tarball}
rm -f ${tarball}
cp $BUILD_PREFIX/share/libtool/build-aux/config.* $(ls -1d ./cfitsio-*)
$PYTHON -m pip install . --no-deps --ignore-installed --no-cache-dir -vvv
