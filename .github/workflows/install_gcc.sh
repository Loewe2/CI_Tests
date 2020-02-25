sudo apt-get install flex
git clone https://github.com/gcc-mirror/gcc.git
cd gcc
./contrib/download_prerequisites
cd ..
mkdir objdir
cd objdir
$PWD/../gcc/configure --prefix="$1" --enable-languages=c,c++ --disable-multilib
make
make install
