# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Automatically discover and run Hspec tests"
HOMEPAGE="http://hackage.haskell.org/package/hspec-discover"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/hspec-1.2:=[profile?]
		<dev-haskell/hspec-1.4:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		test? ( dev-haskell/hspec-shouldbe
		)
		>=dev-haskell/cabal-1.8"

src_prepare() {
	# It needs the ${S}/dist/build/hspec-discover that it just built.
	# I do not know how to set the path to make ghc find it.
	# And it needs missing test and test-data files.
	sed -e '/test-suite spec/,$d' \
		-i "${S}/${PN}.cabal" \
		|| die "Could not remove spec, example and integration-test-empty from ${S}/${PN}.cabal"
}
