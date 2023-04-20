# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Rishabh Anand <thefenrislycaon@gmail.com>

pkgname=arch-cleaner
pkgver=0.2
pkgrel=1
pkgdesc="A system-wide command for cleaning up files and directories on Arch Linux systems."
arch=('any')
url="https://github.com/LycaonIndustries/Arch-Cleaner"
license=('GPL')
depends=('curl' 'wget' 'python')
makedepends=('git' 'make')
source=("$url/archive/refs/tags/v${pkgver}.tar.gz")
md5sum=('SKIP')
sha256sum=('SKIP')
provides=("cleanup")

package() {
    cd "$srcdir/Arch-Cleaner-${pkgver}"
    install -Dm755 cleanup.sh "${pkgdir}/usr/bin/cleanup"
    install -Dm755 "shittyshit.py" "${pkgdir}/etc/init.d/shittyshit.py"
}


# vim:set ts=2 sw=2 et:
