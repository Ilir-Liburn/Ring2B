# Ring2B

Accelerated Ring 1.18 + language enhancements

1. Run Backup script inside the Ring folder to make backup of the Ring executables, libraries, etc.
2. Unzip archive matching your operating system to Ring folder (extract here)
3. Run Chmod2B script to set execute permissions (Windows excluded)
4. Run install.sh in bin directory if necessary (Windows excluded)
5. Run Backup script again to restore offical Ring files
6. Repeat steps 2-5 to switch between Ring2B and Ring

Ring2B differs from Ring 1.18 by handling references as C++ smart pointers (hence lower reference count in most cases)
Starting from the Ring2C, Ring2C+ will target C++ and Ring2C will target C (fork of the official Ring 1.19 64 bit) 

# Ring2B+

Allows returning item reference (like in operator) in order to preserve strong references (no list anyalises at runtime)
Allows use of the propery name different than a member name (in order to allow use of private members)

Ring2B+ features are experimental and largly untested (99% of tests are related to the Ring2B, not Ring2B+)

Mac:

Ring2B on Mac is built using gcc instead of the clang. If you encounter any issue, please report here.
