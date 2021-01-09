PKG_NAME="encoder_libs_deb_aml"
PKG_VERSION="86191c0e0c1f35f227ebe36d57591c0c498e7473"
PKG_SHA256="4197eed02be6b302fab76b26091156c7c6560cdf314a6e924708e4156a2f8fab"
PKG_SOURCE_DIR="${PKG_NAME}-${PKG_VERSION}*"
PKG_SITE="https://github.com/numbqq/${PKG_NAME}"
PKG_URL="https://github.com/numbqq/${PKG_NAME}/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Amlogic H264/H264 encoder libraries."
PKG_SOURCE_NAME="${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"

make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/encoder
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/encoder/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/encoder
}

