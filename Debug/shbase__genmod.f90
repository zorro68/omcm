        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:44 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE SHBASE__genmod
          INTERFACE 
            FUNCTION SHBASE(NB,NS,POL,CENT)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              INTEGER(KIND=4) :: NS
              TYPE (RCSTFI) :: POL
              TYPE (XYZ) :: CENT
              REAL(KIND=16) :: SHBASE
            END FUNCTION SHBASE
          END INTERFACE 
        END MODULE SHBASE__genmod
