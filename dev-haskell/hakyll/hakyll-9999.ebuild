# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-2

DESCRIPTION="A static website compiler library"
HOMEPAGE="http://jaspervdj.be/hakyll"
SRC_URI=""
EGIT_REPO_URI="git://github.com/jaspervdj/hakyll.git"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="+previewserver checkexternal"

RDEPEND=">=app-text/pandoc-1.10:=[profile?]
		<app-text/pandoc-1.12:=[profile?]
		>=dev-haskell/binary-0.5:=[profile?]
		<dev-haskell/binary-0.8:=[profile?]
		>=dev-haskell/blaze-html-0.5:=[profile?]
		<dev-haskell/blaze-html-0.7:=[profile?]
		>=dev-haskell/blaze-markup-0.5.1:=[profile?]
		<dev-haskell/blaze-markup-0.6:=[profile?]
		>=dev-haskell/citeproc-hs-0.3.2:=[profile?]
		<dev-haskell/citeproc-hs-0.4:=[profile?]
		=dev-haskell/cmdargs-0.10*:=[profile?]
		>=dev-haskell/cryptohash-0.7:=[profile?]
		<dev-haskell/cryptohash-0.10:=[profile?]
		>=dev-haskell/data-default-0.4:=[profile?]
		<dev-haskell/data-default-0.6:=[profile?]
		=dev-haskell/deepseq-1.3*:=[profile?]
		>=dev-haskell/lrucache-1.1.1:=[profile?]
		<dev-haskell/lrucache-1.2:=[profile?]
		>=dev-haskell/mtl-1:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		=dev-haskell/network-2.4*:=[profile?]
		>=dev-haskell/parsec-3.0:=[profile?]
		<dev-haskell/parsec-3.2:=[profile?]
		=dev-haskell/random-1.0*:=[profile?]
		=dev-haskell/regex-base-0.93*:=[profile?]
		=dev-haskell/regex-tdfa-1.1*:=[profile?]
		>=dev-haskell/tagsoup-0.12.6:=[profile?]
		<dev-haskell/tagsoup-0.13:=[profile?]
		>=dev-haskell/text-0.11:=[profile?]
		<dev-haskell/text-1.12:=[profile?]
		>=dev-lang/ghc-6.12.1:=
		checkexternal? ( <dev-haskell/http-conduit-1.10:=[profile?]
			>=dev-haskell/http-conduit-1.8:=[profile?]
			<dev-haskell/http-types-0.9:=[profile?]
			>=dev-haskell/http-types-0.7:=[profile?]
		)
		previewserver? ( <dev-haskell/fsnotify-0.1:=[profile?]
			>=dev-haskell/fsnotify-0.0.6:=[profile?]
			<dev-haskell/snap-core-0.10:=[profile?]
			>=dev-haskell/snap-core-0.6:=[profile?]
			<dev-haskell/snap-server-0.10:=[profile?]
			>=dev-haskell/snap-server-0.6:=[profile?]
			<=dev-haskell/system-filepath-0.5:=[profile?]
			>=dev-haskell/system-filepath-0.4.6:=[profile?]
		)"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( =dev-haskell/hunit-1.2*
			>=dev-haskell/quickcheck-2.4
			<dev-haskell/quickcheck-2.7
			>=dev-haskell/test-framework-0.4
			<dev-haskell/test-framework-0.9
			>=dev-haskell/test-framework-hunit-0.2
			<dev-haskell/test-framework-hunit-0.4
			>=dev-haskell/test-framework-quickcheck2-0.2
			<dev-haskell/test-framework-quickcheck2-0.4
		)"

src_prepare() {
	cabal_chdeps \
	      'QuickCheck                 >= 2.4 && < 2.6' \
		  'QuickCheck >= 2.4 && < 2.7'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag previewserver previewserver) \
		$(cabal_flag checkexternal checkexternal)
}
