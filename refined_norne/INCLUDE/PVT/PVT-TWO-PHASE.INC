-- This reservoir simulation deck is made available under the Open Database
-- License: http://opendatacommons.org/licenses/odbl/1.0/. Any rights in
-- individual contents of the database are licensed under the Database Contents
-- License: http://opendatacommons.org/licenses/dbcl/1.0/

-- Copyright (C) 2015 Statoil

-- PVT PROPERTIES OF WATER
--
--  REF.PRES.  REF.FVF.    COMPR.   REF.VISC.   VISCOSIBILITY
-- ==========================================================
PVTW
    277.0      1.038      4.67E-5    0.318       0.0 /

PVCDO
    277.0      1.038      4.67E-5    0.318       0.0 /

PVDG
    277.0      1.038     0.318 /

-- AVERAGE GAS DENSITY AT STD CONDITIONS = 0.854 KG/M3                            
                                                                                
-- AVERAGE OIL DENSITY AT STD CONDITIONS = 859.5 KG/M3                            
                                                                                
---------------------------------------------------------------------
-- ROCK COMPRESSIBILITY
--
--   REF.PRES.   COMPR.
ROCK
      277.0     4.84E-5 /
 
-- ==================================================================
 
---------------------------------------------------------------------
-- SURFACE DENSITIE OF RESERVOIR FLUIDS
--     OIL    WATER     GAS
DENSITY
      1033.0  1033.0    1033.0  /  Justert 22/7
 
--------------------------------------------------------------------
--
--      End of file           --------
--
--------------------------------------------------------------------
