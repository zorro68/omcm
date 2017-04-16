        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:44 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE SXBASE__genmod
          INTERFACE 
            FUNCTION SXBASE(NB,NS,POL,P)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              INTEGER(KIND=4) :: NS
              TYPE (RCSTFI) :: POL
              TYPE (XYZ) :: P
              REAL(KIND=16) :: SXBASE
            END FUNCTION SXBASE
          END INTERFACE 
        END MODULE SXBASE__genmod
