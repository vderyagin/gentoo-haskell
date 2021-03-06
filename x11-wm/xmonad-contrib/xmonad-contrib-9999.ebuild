# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI=5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal darcs

DESCRIPTION="Third party extensions for xmonad"
HOMEPAGE="http://xmonad.org/"
EDARCS_REPOSITORY="http://code.haskell.org/XMonadContrib"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="xft testing"

RDEPEND="dev-haskell/extensible-exceptions:=[profile?]
		<dev-haskell/mtl-3:=[profile?]
		dev-haskell/random:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		>=dev-haskell/x11-1.6.1:=[profile?]
		xft? ( >=dev-haskell/x11-xft-0.2:=[profile?] )
		~x11-wm/xmonad-${PV}[profile?]
		>=dev-lang/ghc-6.10.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag testing testing) \
		$(cabal_flag xft use_xft)
}
