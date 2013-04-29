# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# Open Cubic Player live ebuild by nilsding <nilsding@rout0r.org>
# Twitter: http://twitter.com/nilsding

EAPI=5

EGIT_REPO_URI="git://git.code.sf.net/p/opencubicplayer/code"
GIT_ECLASS="git-2"
inherit ${GIT_ECLASS}

DESCRIPTION="Unix port of the Open Cubic Player. It is able to play modules
(MOD, XM, S3M, IT, etc.), MP2, MP3, WAV, OGG, FLAC, SID, adplug etc."
HOMEPAGE="http://stian.cubic.org/project-ocp.php"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="debug X adplug sidplay alsa flac sdl"

RDEPEND="media-libs/libmad
  media-libs/libogg
  media-libs/libvorbis
  sidplay? ( media-libs/libsidplay:1 )
  X? (
	x11-libs/libXext
	x11-libs/libXxf86vm
	x11-libs/libX11
	x11-libs/libXpm
  )
  alsa? ( media-libs/alsa-lib )
  adplug? ( media-libs/adplug )
  flac? ( media-libs/flac )
  sdl? ( media-libs/libsdl )
  media-sound/timidity-eawpatches
"
DEPEND="sdl? ( dev-util/desktop-file-utils )
  X? ( dev-util/desktop-file-utils )
  sys-apps/texinfo
  app-arch/unzip
  app-arch/lha
"

src_configure() {
  econf \
	$(use_with debug)
	$(use_with sidplay) \
	$(use_with X x11) \
	$(use_with alsa) \
	$(use_with adplug) \
	$(use_with flac) \
	$(use_with sdl)
}


