        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:42 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE GENERA_MONTECARLO__genmod
          INTERFACE 
            SUBROUTINE GENERA_MONTECARLO(MET,CMON,IISEM,IMAL,ALEA,RN)
              USE ESTRUCT, ONLY :                                       &
     &          DAT_METODO
              TYPE (DAT_METODO) :: MET
              CHARACTER(LEN=3) :: CMON
              INTEGER(KIND=4) :: IISEM
              INTEGER(KIND=4) :: IMAL
              REAL(KIND=16) :: ALEA
              REAL(KIND=16) :: RN
            END SUBROUTINE GENERA_MONTECARLO
          END INTERFACE 
        END MODULE GENERA_MONTECARLO__genmod
