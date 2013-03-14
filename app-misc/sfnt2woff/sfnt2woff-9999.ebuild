# Copyright 2013 Christopher Jason Camisa
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit eutils git-2
DESCRIPTION="Converts existing TrueType/OpenType fonts to WOFF format"
HOMEPAGE="http://people.mozilla.com/~jkew/woff/"
EGIT_REPO_URI="git://github.com/ppicazo/${PN}.git"
LICENSE="MPL-1.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND=">=sys-libs/zlib-1.2.7
	>=dev-vcs/git-1.8.1.5"
RDEPEND=">=sys-libs/zlib-1.2.7"

src_install() {

	dobin sfnt2woff || die
	dobin woff2sfnt || die
}
