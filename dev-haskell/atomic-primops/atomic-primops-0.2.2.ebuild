# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

#  error: #error "Before Cabal 1.17 there was a bug that prevents you from
#  building this library with profiling.  See cabal issue 1284."
CABAL_FEATURES="lib haddock hoogle hscolour" #profile
inherit haskell-cabal

DESCRIPTION="A safe approach to CAS and other atomic ops in Haskell."
HOMEPAGE="https://github.com/rrnewton/haskell-lockfree-queue/wiki"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND="dev-haskell/bits-atomic:=
		dev-haskell/cabal:=
		dev-haskell/primitive:=
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}
