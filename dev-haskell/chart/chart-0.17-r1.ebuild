# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

GTK_MAJ_VER="2"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Chart"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A library for generating 2D Charts and Plots"
HOMEPAGE="https://github.com/timbod7/haskell-chart/wiki"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="${GTK_MAJ_VER}/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.9.11:${GTK_MAJ_VER}=[profile?]
		>=dev-haskell/colour-2.2.1:=[profile?]
		=dev-haskell/data-accessor-0.2*:=[profile?]
		>=dev-haskell/data-accessor-template-0.2.1.1:=[profile?]
		<dev-haskell/data-accessor-template-0.3:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	CABAL_FILE=${S}/${MY_PN}.cabal cabal_chdeps \
		'cairo >= 0.9.11' 'cairo >= 0.9.11 && < 0.13'
}
