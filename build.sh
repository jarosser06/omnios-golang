#!/bin/bash

GO_VERSION=1.4
GO_PKG=go${GO_VERSION}.src.tar.gz
GO_URI=http://golang.org/dl/${GO_PKG}

case $1 in
"clean")
  rm -rf ./go
  rm -f *.tar.gz
  ;;
*)
  ./build.sh clean
  echo "Fetching Golang Source"
  wget $GO_URI
  tar -xf $GO_PKG
  vagrant up
  vagrant ssh -c "sudo pkg unset-publisher ms.omniti.com
  sudo pkg install --accept developer/object-file \
    system/header system/library/math/header-math developer/gcc48
  pushd ~/golang/go/src &> /dev/null
  export PATH=\$PATH:/opt/gcc-4.8.1/bin/
  ./all.bash"
  tar -czf go${GO_VERSION}.omnios-amd64.tar.gz go
  ;;
esac
