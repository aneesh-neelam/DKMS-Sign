#!/usr/bin/env bash

source /etc/uefi-sb/signtool.rc

cd ../$kernelver/$arch/module/

for kernel_object in *ko; do
     echo "Signing Linux kernel_object: $kernel_object"
    ${kernel_source_dir}/scripts/sign-file sha256 $PRIVATE_KEY_FILE $PUBLIC_KEY_FILE "$kernel_object";
done
