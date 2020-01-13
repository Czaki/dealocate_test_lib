
if [ "$CXX" = "" ]; then
    CXX=c++
fi

CXX_64="$CXX -arch x86_64"
CXX_32="$CXX -arch i386"

$CXX_64 -o liba.${NUM}.dylib -mmacosx-version-min=10.${NUM} -dynamiclib a.cc
$CXX_64 -o libb.${NUM}.dylib -mmacosx-version-min=10.${NUM} -dynamiclib b.cc -L. -la.${NUM}
$CXX_64 -o libc.${NUM}.dylib -mmacosx-version-min=10.${NUM} -dynamiclib c.cc -L. -la.${NUM} -lb.${NUM}