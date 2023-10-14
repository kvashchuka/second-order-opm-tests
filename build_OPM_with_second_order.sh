for module in common geometry grid istl
do
  git clone -c http.sslVerify=false https://gitlab.dune-project.org/core/dune-$module.git --branch v2.7.0
done

for module in common geometry grid istl
do
  ./dune-common/bin/dunecontrol --only=dune-$module cmake -DCMAKE_DISABLE_FIND_PACKAGE_MPI=1
  ./dune-common/bin/dunecontrol --only=dune-$module make -j5
done

for repo in common material grid models simulators
do
    git clone -c http.sslVerify=false -b thesis-build git@github.com:kvashchuka/opm-$repo.git
done

CURRENT_DIRECTORY="$PWD"
mkdir build
for repo in common material grid models simulators
do
    rm -rf build/opm-$repo
    mkdir build/opm-$repo
    cd build/opm-$repo
    cmake -DUSE_MPI=0 -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$CURRENT_DIRECTORY/dune-common/build-cmake;$CURRENT_DIRECTORY/dune-grid/build-cmake;$CURRENT_DIRECTORY/dune-geometry/build-cmake;$CURRENT_DIRECTORY/dune-istl/build-cmake;$CURRENT_DIRECTORY/build/opm-common;$CURRENT_DIRECTORY/build/opm-grid;$CURRENT_DIRECTORY/build/opm-models" $CURRENT_DIRECTORY/opm-$repo
    make -j5
    cd ../..
done
