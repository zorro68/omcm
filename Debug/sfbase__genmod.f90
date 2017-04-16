        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:44 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE SFBASE__genmod
          INTERFACE 
            FUNCTION SFBASE(NB,NS,POL)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              INTEGER(KIND=4) :: NS
              TYPE (RCSTFI) :: POL
              REAL(KIND=16) :: SFBASE
            END FUNCTION SFBASE
          END INTERFACE 
        END MODULE SFBASE__genmod
