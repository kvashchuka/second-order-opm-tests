#!/bin/bash

cd ../../OPM_2020.04-pre/opm-simulators/build/
make flow
cd ../../../tests_2020.04-pre_github/norne_refined/

EXEC=~/OPM_withtests/OPM_2020.04-pre/opm-simulators/build/bin/flow
CASE_X1=X1_SIMPLE.DATA
CASE_X2=X2_SIMPLE.DATA
PARAM=sameFluidsHighRate

cd X1/

#$EXEC $CASE_X1 --output-dir=1st_$PARAM &> 1st_$PARAM.txt

$EXEC $CASE_X1 --enable-higher-order=1 --enable-local-reconstruction=1 --reconstruction-scheme-id=3 --output-dir=LP_$PARAM &> LP_$PARAM.txt

cd ../X2/

$EXEC $CASE_X2 --output-dir=1st_$PARAM &> 1st_$PARAM.txt

$EXEC $CASE_X2 --enable-higher-order=1 --enable-local-reconstruction=1 --reconstruction-scheme-id=3 --output-dir=LP_$PARAM &> LP_$PARAM.txt
