#!/usr/bin/zsh

if [[ -e compressed.txt ]]; then
  rm compressed.txt
fi
if [[ -e decompressed.txt ]]; then
  rm decompressed.txt
fi
./squash < filep.01.10000NR > compressed.txt
./unsquash < compressed.txt > decompressed.txt
diff filep.01.10000NR decompressed.txt
