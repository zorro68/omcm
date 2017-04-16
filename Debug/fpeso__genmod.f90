        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:31:00 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE FPESO__genmod
          INTERFACE 
            SUBROUTINE FPESO(NB1,NS1,NB2,NS2,P1,P2,P12)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB1
              INTEGER(KIND=4) :: NS1
              INTEGER(KIND=4) :: NB2
              INTEGER(KIND=4) :: NS2
              TYPE (XYZ) :: P1
              TYPE (XYZ) :: P2
              TYPE (XYZ) :: P12
            END SUBROUTINE FPESO
          END INTERFACE 
        END MODULE FPESO__genmod
