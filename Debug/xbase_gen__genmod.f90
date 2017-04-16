        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:49 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE XBASE_GEN__genmod
          INTERFACE 
            FUNCTION XBASE_GEN(NB,POL,P)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              TYPE (RCSTFI) :: POL
              TYPE (XYZ) :: P
              REAL(KIND=16) :: XBASE_GEN
            END FUNCTION XBASE_GEN
          END INTERFACE 
        END MODULE XBASE_GEN__genmod
