        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:42 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE VRBASE__genmod
          INTERFACE 
            FUNCTION VRBASE(NB,POL,CENT)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              TYPE (RCSTFI) :: POL
              TYPE (XYZ) :: CENT
              REAL(KIND=16) :: VRBASE
            END FUNCTION VRBASE
          END INTERFACE 
        END MODULE VRBASE__genmod
