# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
inherit  qt4-r2 cmake-utils git
LANGS="ru"
SLOT="0"
DESCRIPTION="Qt4-based WINE managing utility - GUI"
HOMEPAGE="http://winegame.googlecode.com"
EGIT_REPO_URI="git://github.com/pashazz/${PN}.git"
S=${WORKDIR}/${PN}
LICENSE="GPL-3"
DEPEND=">=x11-libs/qt-gui-4.6.0
	=dev-libs/winestuff-${PV}"
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