# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
inherit git qt4-r2 cmake-utils
LANGS="ru"

DESCRIPTION="Qt4-based WINE managing utility - Library"
HOMEPAGE="http://winegame.googlecode.com"
SLOT="0"
EGIT_REPO_URI="git://github.com/pashazz/${PN}.git"
DEPEND=">=x11-libs/qt-sql-4.6.0
	>=x11-libs/qt-core-4.6.0
	app-emulation/winetricks
	dev-util/cmake
	sys-fs/fuseiso"
S=${WORKDIR}/${PN}
src_unpack()
{
	git_src_unpack
}
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
