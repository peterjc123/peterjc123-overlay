# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit font unpacker

DESCRIPTION="A CJK programming font based on Iosevka and Source Han Sans. (TTC)"
HOMEPAGE="https://github.com/laishulu/Sarasa-Term-SC-Nerd"
SRC_URI="https://github.com/laishulu/Sarasa-Term-SC-Nerd/releases/download/v${PV}/${PN}.ttc.7z -> ${P}.7z"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
BDEPEND="
	app-arch/p7zip
"

RESTRICT="mirror"

S="${WORKDIR}"
FONT_S="${S}"
FONT_SUFFIX="ttc"
