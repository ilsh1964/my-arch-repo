#!/bin/bash

cd x86_64
rm my-arch-repo*

echo "repo-add"
repo-add -n -R -v my-arch-repo.db.tar.gz *.pkg.tar.zst
rm -v my-arch-repo.db
rm -v my-arch-repo.files
mv -v my-arch-repo.db.tar.gz my-arch-repo.db
mv -v my-arch-repo.files.tar.gz my-arch-repo.files
cd ..
echo "####################################"
echo "Repo Updated!!"
echo "####################################"
