# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Rishabh Anand <thefenrislycaon@gmail.com>
pkgname=Arch-Cleaner-git
pkgver=v0.0.2
pkgrel=1
pkgdesc="This package provides Cleaner Script for Arch Linux "
arch=(x86_64)
url="git://github.com/LycaonIndustries/Arch-Cleaner"
license=('GNU General Public License v3.0')
depends=(curl python)
makedepends=(git make)
provides=(cleanup)
source=("git+$url")
md5sums=("SKIP")

build() {
	cd "$pkgname"
	./configure --prefix=/usr
	make
}
package() {
	make DESTDIR="$pkgdir/" install
}
