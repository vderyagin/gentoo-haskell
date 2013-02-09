# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile" # haddock does not parse such haskell fu: haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A framework for generating singleton types"
HOMEPAGE="http://www.cis.upenn.edu/~eir/packages/singletons"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.1.1:=[profile?]
		>=dev-haskell/syb-0.3:=[profile?]
		>=dev-lang/ghc-7.6.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"