# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit cmake xdg

DESCRIPTION="ImPlay is a Cross-Platform Desktop Media Player, built on top of mpv and ImGui."
HOMEPAGE="https://tsl0922.github.io/ImPlay/"
SRC_URI="https://github.com/tsl0922/ImPlay/archive/${PV}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=media-video/mpv-0.29:=[libmpv]
	>=media-libs/glfw-3.1
	sys-apps/xdg-desktop-portal"

DEPEND="${RDEPEND}
	>=dev-util/cmake-3.13
	=x11-libs/gtk+-3*
	=media-libs/freetype-2*"


src_prepare() {
    cmake_src_prepare
}

src_configure() {
	local mycmakeargs=( -DUSE_XDG_PORTAL=ON -DBUILD_SHARED_LIBS=OFF )
	cmake_src_configure
}

src_compile() {
	cmake_src_compile
}

src_install() {
	cmake_src_install
}

pkg_postinst() {
	xdg_pkg_postinst

}
