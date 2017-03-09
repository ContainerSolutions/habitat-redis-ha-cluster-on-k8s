pkg_name=redis-publisher
pkg_origin=moretea
pkg_version=0.1.0
pkg_source="nope.gif"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="Set redis roles"
pkg_build_deps=(core/ruby)
pkg_expose=(9638)
pkg_build_deps=(core/curl)
pkg_deps=(core/ruby)

do_download() {
  return 0
}

do_verify() {
  return 0
}

do_unpack() {
  return 0
}

do_configure() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
  chmod +x ./kubectl
  mkdir -p $pkg_prefix/bin
  cp ./kubectl $pkg_prefix/bin/kubectl
}
