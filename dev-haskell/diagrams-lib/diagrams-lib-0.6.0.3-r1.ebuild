# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Embedded domain-specific language for declarative graphics"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/active-0.1*:=[profile?]
		>=dev-haskell/colour-2.3.2:=[profile?]
		<dev-haskell/colour-2.4:=[profile?]
		>=dev-haskell/data-default-0.2:=[profile?]
		<dev-haskell/data-default-0.6:=[profile?]
		=dev-haskell/diagrams-core-0.6*:=[profile?]
		>=dev-haskell/monoid-extras-0.2.2:=[profile?]
		<dev-haskell/monoid-extras-0.4:=[profile?]
		=dev-haskell/newtype-0.2*:=[profile?]
		>=dev-haskell/numinstances-1.0:=[profile?]
		<dev-haskell/numinstances-1.4:=[profile?]
		>=dev-haskell/semigroups-0.3.4:=[profile?]
		<dev-haskell/semigroups-0.10:=[profile?]
		>=dev-haskell/vector-space-0.7.7:=[profile?]
		<dev-haskell/vector-space-0.9:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	epatch "${FILESDIR}"/${P}-monoid-extras.patch
	cabal_chdeps \
		"monoid-extras >= 0.2.2 && < 0.3" "monoid-extras >= 0.2.2 && < 0.4"

}
