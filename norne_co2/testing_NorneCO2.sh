#!/bin/bash
cd ../../../../OPM_2020.04-pre/opm-simulators/build/
make flow
cd ../../../tests_2020.04-pre/norne/norne_refined/e100

EXEC=~/OPM_withtests/OPM_2020.04-pre/opm-simulators/build/bin/flow

CASEX1_CO2=X1_SIMPLE_CO2

TIMESTEP=1

cd X1

$EXEC $CASEX1_CO2 --output-dir=1st_difwells100_$CASEX1_CO2 &> 1st_difwells100_$CASEX1_CO2.txt

$EXEC $CASEX1_CO2  --enable-higher-order=1 --enable-local-reconstruction=1 --reconstruction-scheme-id=3 --only-reconstruction-for-solvent-or-polymer=false --output-dir=LP_notonly_difwells100_$CASEX1_CO2 &> LP_notonly_difwells100_$CASEX1_CO2.txt


