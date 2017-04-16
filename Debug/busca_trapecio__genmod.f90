        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:31:03 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE BUSCA_TRAPECIO__genmod
          INTERFACE 
            SUBROUTINE BUSCA_TRAPECIO(AREATOT,RN,P,STR,ALEA,FDEN)
              USE GLOBAL, ONLY :                                        &
     &          INCREMENT
              USE ESTRUCT, ONLY :                                       &
     &          XY
              REAL(KIND=16) :: AREATOT
              REAL(KIND=16) :: RN
              TYPE (XY) :: P(1:INCREMENT+1)
              REAL(KIND=16) :: STR(INCREMENT)
              REAL(KIND=16) :: ALEA
              REAL(KIND=16) :: FDEN
            END SUBROUTINE BUSCA_TRAPECIO
          END INTERFACE 
        END MODULE BUSCA_TRAPECIO__genmod
