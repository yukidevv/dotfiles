#!/usr/bin/env bash

if [[ ${1} = "mount" ]]; then
    echo ${1}
    google-drive-ocamlfuse ~/gdrive
else
    fusermount -u ~/gdrive
fi
