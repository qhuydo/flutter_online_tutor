#!/bin/bash
pkgname=flutter_online_tutor
pkgver=0.1.1
cd ../..
pwd
~/Flutter/sdk/flutter-2.10.5/bin/flutter build linux --release --verbose
# flutter build linux --release --verbose
tar -C build/linux/x64/release/bundle --transform 's,^,flutter_online_tutor/,' -cvf ${pkgname}-${pkgver}.tar.gz .
mv ${pkgname}-${pkgver}.tar.gz linux/arch/${pkgname}-${pkgver}.tar.gz
