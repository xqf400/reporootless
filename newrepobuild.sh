echo generating files at $(pwd)

dpkg-scanpackages -m ./debs > Packages

bzip2 -k ./Packages
xz -k ./Packages
zstd -q -c19 Packages > Packages.zst

echo done
