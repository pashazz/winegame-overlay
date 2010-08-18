# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
inherit qt4-r2 cmake-utils
LANGS="ru"
SLOT="0"
MY_P="${PN}-${PV/_/-}"
DESCRIPTION="Qt4-based WINE managing utility - GUI"
HOMEPAGE="http://winegame.googlecode.com"
SRC_URI="${HOMEPAGE}/files/${MY_P}.tar.gz"
S=${WORKDIR}/${MY_P}
KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"
DEPEND=">=x11-libs/qt-gui-4.6.0
	=dev-libs/winestuff-${PV}"
DOCS=(GAMETODO TODO README)
src_prepare() {
	qt4-r2_src_prepare
}

src_compile()
{
cmake-utils_src_compile
}

src_install()
{
cmake-utils_src_install
}