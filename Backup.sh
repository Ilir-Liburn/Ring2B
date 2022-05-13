if [ ! -d "backup" ]; then
mkdir backup
cd backup
mkdir tools
cd tools
mkdir ring2exe
cp ../../tools/ring2exe/ring2exe.ring ring2exe
cd ..
mkdir libraries
cd libraries
mkdir stdlib
cp ../../libraries/stdlib/stdlibcore.ring stdlib
cd ..
mkdir lib
cp ../lib/libringstatic.a lib
if [ -f ../lib/libring.dylib ];
then
cp ../lib/libring.dylib lib
fi
if [ -f ../lib/libring.so ];
then
cp ../lib/libring.so lib
fi
mkdir bin
cp ../bin/ring bin
cp ../bin/ring2exe bin
cp ../bin/ringpm bin
if [ -f ../lib/libring.dylib ];
then
cp ../bin/folder2qrc bin
cp ../bin/ringrepl bin
fi
cd ..
else
cd backup
cp tools/ring2exe/ring2exe.ring ../tools/ring2exe
cp libraries/stdlib/stdlibcore.ring ../libraries/stdlib
cp lib/libringstatic.a ../lib
if [ -f lib/libring.dylib ];
then
cp lib/libring.dylib ../lib
fi
if [ -f lib/libring.so ];
then
cp lib/libring.so ../lib
fi
cp bin/ring ../bin
chmod +x ../bin/ring
cp bin/ring2exe ../bin
chmod +x ../bin/ring2exe
cp bin/ringpm ../bin
chmod +x ../bin/ringpm
if [ -f lib/libring.dylib ];
then
cp bin/folder2qrc ../bin
cp bin/ringrepl ../bin
fi
cd ..
rm bin/sign2b
fi
