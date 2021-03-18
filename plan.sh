pkg_name=libedit
pkg_origin=core
pkg_version=3.1.20210216
pkg_license=('BSD-3-Clause')
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_source=http://thrysoee.dk/editline/libedit-20210216-3.1.tar.gz
pkg_dirname="${pkg_name}-20150325-3.1"
pkg_upstream_url="https://thrysoee.dk/editline/"
pkg_description="This is an autotool- and libtoolized port of the NetBSD Editline library (libedit)."
pkg_shasum=2283f741d2aab935c8c52c04b57bf952d02c2c02e651172f8ac811f77b1fc77a
pkg_deps=(core/glibc core/ncurses)
pkg_build_deps=(core/gcc core/make core/coreutils)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)

do_build() {
  ./configure --enable-widec --prefix="$pkg_prefix"
}
