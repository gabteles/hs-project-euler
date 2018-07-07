#! /bin/sh
mkdir -p build
ghc --make solutions/$1.hs -odir build -hidir build -o build/$1
rm build/*.hi build/*.o