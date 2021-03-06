# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Declare, construct and verify directory layout"
HOMEPAGE="http://hackage.haskell.org/package/directory-layout"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default:=[profile?]
		dev-haskell/lens:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/semigroupoids:=[profile?]
		dev-haskell/semigroups:=[profile?]
		dev-haskell/text:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10
		test? ( dev-haskell/doctest
			dev-haskell/hspec
			dev-haskell/hunit
			dev-haskell/quickcheck
			dev-haskell/wordexp
		)"
