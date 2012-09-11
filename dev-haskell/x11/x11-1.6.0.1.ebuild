# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="X11"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding to the X11 graphics library"
HOMEPAGE="https://github.com/haskell-pkg-janitors/X11"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~sparc ~x86 ~amd64-linux ~ppc64 ~ppc-macos ~x86-linux"
IUSE="xinerama"

RDEPEND="dev-haskell/syb[profile?]
		>=dev-lang/ghc-6.8.2
		x11-libs/libX11
		x11-libs/libXext
		x11-libs/libXrandr
		xinerama? ( x11-libs/libXinerama )"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

src_configure() {
	cabal_src_configure --configure-option=$(use_with xinerama)
}