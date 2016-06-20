#!/usr/bin/env bash
# FileName: mkpdf
# Installed: texlive

fullpath=$1
removedsuffix=${fullpath%.*}
basefilename=${removedsuffix##*/}

if [ ! -f ${basefilename}".tex" ]; then
    echo "Err: 文件不存在 "${basefilename}".tex"
    exit 102
fi
latex ${basefilename}".tex"
dvips ${basefilename}".dvi"
ps2pdf ${basefilename}".ps"
