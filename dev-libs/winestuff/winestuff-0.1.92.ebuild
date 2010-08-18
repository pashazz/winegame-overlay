# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
inherit eutils qt4-r2 cmake-utils
LANGS="ru"

DESCRIPTION="Qt4-based WINE managing utility - Library"
HOMEPAGE="http://winegame.googlecode.com"
MY_P="${PN}-${PV/_/-}"
SRC_URI="${HOMEPAGE}/files/${MY_P}.tar.gz"
S=${WORKDIR}/${MY_P}
KEYWORDS="~amd64 ~x86"
LICENSE="LGPL-2.1"
SLOT="0"
DEPEND="dev-util/cmake
	>=x11-libs/qt-sql-4.6.0
	>=x11-libs/qt-core-4.6.0
	app-emulation/winetricks
	sys-fs/fuseiso"

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
