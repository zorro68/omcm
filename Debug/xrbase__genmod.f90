        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:42 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE XRBASE__genmod
          INTERFACE 
            FUNCTION XRBASE(NB,POL,P)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              TYPE (RCSTFI) :: POL
              TYPE (XYZ) :: P
              REAL(KIND=16) :: XRBASE
            END FUNCTION XRBASE
          END INTERFACE 
        END MODULE XRBASE__genmod
