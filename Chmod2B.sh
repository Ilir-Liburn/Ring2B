chmod +x bin/sign2b
chmod +x bin/ring
chmod +x bin/ring2exe
chmod +x bin/ringpm

if [ -f lib/libring.dylib ];
then
ln -sf "`pwd`/bin/sign2b" /usr/local/bin/sign2b
xattr -d com.apple.quarantine /usr/local/bin/sign2b
fi

if [ -f lib/libring.so ];
then
sudo ln -sf "`pwd`/bin/sign2b" /usr/bin/sign2b
fi

