#!/bin/sh

set -e
set -x

# install_name_tool -id '@rpath/libfreetype.6.16.0.dylib' libfreetype.6.16.0.dylib
# install_name_tool -change /opt/homebrew/opt/libpng/lib/libpng16.16.dylib '@rpath/libpng16.16.dylib' libfreetype.6.16.0.dylib
# install_name_tool -change /opt/homebrew/opt/harfbuzz/lib/libharfbuzz.0.dylib '@rpath/libharfbuzz.0.dylib' libfreetype.6.16.0.dylib

# install_name_tool -change /opt/homebrew/opt/assimp/lib/libassimp.5.dylib '@rpath/libassimp.5.dylib' libmeshIO.dylib
# install_name_tool -change /Users/runner/work/manifold/manifold/build/_deps/freetype2-build/libfreetype.6.dylib '@rpath/libfreetype.6.dylib' libmeshIO.dylib


install_name_tool -change /opt/homebrew/opt/assimp/lib/libassimp.5.dylib '@rpath/libassimp.5.dylib' target/classes/libmanifold.3.0.0.dylib 
install_name_tool -change /opt/homebrew/opt/libpng/lib/libpng16.16.dylib '@rpath/libpng16.16.dylib' target/classes/libmanifold.3.0.0.dylib 
install_name_tool -change /opt/homebrew/opt/harfbuzz/lib/libharfbuzz.0.dylib '@rpath/libharfbuzz.0.dylib' target/classes/libmanifold.3.0.0.dylib 
