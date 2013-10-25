# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="DadaDodo is a program that analyses texts for word probabilities, and then generates random cut-up sentences based on that."
HOMEPAGE="http://www.jwz.org/dadadodo/"
SRC_URI="http://www.jwz.org/${PN}/${PN}-${PV}.tar.gz"

LICENSE="colt"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
    dobin dadadodo || die "install failed"
}

