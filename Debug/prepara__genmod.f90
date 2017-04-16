        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:49 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE PREPARA__genmod
          INTERFACE 
            SUBROUTINE PREPARA(NB1,NB2,P1,P2,P12,VALPRE,CMON,ARP,AT,    &
     &PPOLIG,STRPOLIG)
              USE GLOBAL
              USE ESTRUCT
              INTEGER(KIND=4) :: NB1
              INTEGER(KIND=4) :: NB2
              TYPE (XYZ) :: P1
              TYPE (XYZ) :: P2
              TYPE (XYZ) :: P12
              REAL(KIND=16) :: VALPRE
              CHARACTER(LEN=3) :: CMON
              REAL(KIND=16) :: ARP
              REAL(KIND=16) :: AT
              TYPE (XY) :: PPOLIG(1:INCREMENT+1)
              REAL(KIND=16) :: STRPOLIG(INCREMENT)
            END SUBROUTINE PREPARA
          END INTERFACE 
        END MODULE PREPARA__genmod
