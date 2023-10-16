#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/cilium/cilium-cli/releases/download

# https://github.com/cilium/cilium-cli/releases/download/v0.13.1/cilium-linux-amd64.tar.gz.sha256sum

dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=${4:-tar.gz}
    local platform="${os}-${arch}"
    local url="$MIRROR/v$ver/cilium-$platform.${archive_type}.sha256sum"
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform $(curl -sSLf $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver darwin amd64
    dl $ver darwin arm64
    dl $ver linux 386
    dl $ver linux amd64
    dl $ver linux arm
    dl $ver linux arm64
    dl $ver windows 386
    dl $ver windows amd64
    dl $ver windows arm64
}

dl_ver ${1:-0.15.10}
