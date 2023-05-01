echo generating files at $(pwd)

rm -f Packages
rm -f Packages.bz2
rm -f Packages.zst
rm -f Packages.xz
dpkg-scanpackages -m ./debs > Packages

bzip2 -k ./Packages
xz -k ./Packages
zstd -q -c19 Packages > Packages.zst

echo done
