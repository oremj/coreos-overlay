# Copyright (c) 2012 The Chromium OS Authors. All rights reserved.
# Distributed under the terms of the GNU General Public License v2

EAPI="4"
CROS_WORKON_COMMIT="0ec0fd256a173c31af2f51e52e5c6f6b9a569cae"
CROS_WORKON_PROJECT="coreos/dev-util"
CROS_WORKON_REPO="git://github.com"
CROS_WORKON_LOCALNAME="dev"
CROS_WORKON_LOCALDIR="src/platform"

inherit cros-workon

DESCRIPTION="A util for installing packages using the CrOS dev server"
HOMEPAGE="http://www.chromium.org/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 arm x86"
IUSE=""

RDEPEND="app-shells/bash
	dev-lang/python
	dev-util/shflags
	sys-apps/portage"
DEPEND="${RDEPEND}"

src_install() {
	into /usr
	dobin gmerge stateful_update crdev
}
