        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:49 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE VBASE_GEN__genmod
          INTERFACE 
            FUNCTION VBASE_GEN(NB,POL,CENT)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              TYPE (RCSTFI) :: POL
              TYPE (XYZ) :: CENT
              REAL(KIND=16) :: VBASE_GEN
            END FUNCTION VBASE_GEN
          END INTERFACE 
        END MODULE VBASE_GEN__genmod
