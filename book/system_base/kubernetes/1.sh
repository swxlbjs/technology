#!/usr/bin/env bash

# 摘要介绍 ########################################################
# Function   : 完善智慧连接器安装部署
# Platform   :All Linux Bash
# Date       :2022-07-29
# Author     :swxlbjs

set -eux

tag_prefix="registry.tcs.io/tes"
base_path=$(cd $(dirname $0);pwd)
sortware="https://tes-public-1258344699.cos.ap-guangzhou.myqcloud.com/enerlink-v2.1.1.tgz"

function get_sortware() {
    wget $sortware
    tar zxf $sortware
    tar zxf $base_path/enerlink-content/enerlink.tgz -C enerlink-content/
}



cat > host << EOF
[other_master]
192.168.1.4
192.168.1.11
192.168.1.5
192.168.1.2
192.168.1.10
EOF




for x in 192.168.1.4 192.168.1.11 192.168.1.5 192.168.1.2 192.168.1.10; do  scp -r /data/enerlink/ $x:/data/; done

cd /data/enerlink/enerlink-content/
docker load -i image.tgz
for x in `cat enerlink/info/image-list`; do  image_name="$(echo $x | awk -F \: '{print $1}'):1.0"; echo "update tag $x" &&  docker tag "$image_name" "registry.tcs.io/tes/$image_name" ;done

