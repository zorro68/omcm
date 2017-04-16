        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:45 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE SVBASE__genmod
          INTERFACE 
            FUNCTION SVBASE(NB,NS,POL,CENT)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              INTEGER(KIND=4) :: NS
              TYPE (RCSTFI) :: POL
              TYPE (XYZ) :: CENT
              REAL(KIND=16) :: SVBASE
            END FUNCTION SVBASE
          END INTERFACE 
        END MODULE SVBASE__genmod
