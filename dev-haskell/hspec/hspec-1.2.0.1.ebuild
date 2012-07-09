# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Behavior Driven Development for Haskell"
HOMEPAGE="http://hspec.github.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="~dev-haskell/ansi-terminal-0.5.5[profile?]
		>=dev-haskell/hunit-1[profile?]
		<=dev-haskell/hunit-2[profile?]
		>=dev-haskell/quickcheck-2.4.0.1[profile?]
		<=dev-haskell/quickcheck-2.5[profile?]
		>=dev-haskell/silently-1.1.1[profile?]
		<dev-haskell/silently-2[profile?]
		<dev-haskell/time-1.5[profile?]
		>=dev-haskell/transformers-0.2.0[profile?]
		<dev-haskell/transformers-0.4.0[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

# the tests depend on dev-haskell/hspec-shouldbe which depends on hspec,
# depend on doctest which depends on hspec, difficult or impossible build with
# the circular dependencies.
		# test? ( >=dev-haskell/doctest-0.7
		# 	dev-haskell/hspec-discover
		# 	dev-haskell/hspec-shouldbe
		# )

src_prepare() {
	# remove the tests
	sed -e '/test-suite spec/,$d' \
		-i "${S}/${PN}.cabal" || die "Could not remove tests"
}