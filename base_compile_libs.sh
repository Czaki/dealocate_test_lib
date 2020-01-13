
if [ "$CXX" = "" ]; then
    CXX=c++
fi

$CXX_64 -o liba.6.dylib -mmacosx-version-min=10.${NUM} -dynamiclib a.cc
$CXX_64 -o libb.6.dylib -mmacosx-version-min=10.${NUM} -dynamiclib b.cc -L. -la.${NUM}
$CXX_64 -o libc.6.dylib -mmacosx-version-min=10.${NUM} -dynamiclib c.cc -L. -la.${NUM} -lb.${NUM}