        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:42 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE INV_FDEN_ANG__genmod
          INTERFACE 
            SUBROUTINE INV_FDEN_ANG(IMAL,ARP,ALEA,FDEN,MET,P,STR,CMON,  &
     &IISEM)
              USE GLOBAL, ONLY :                                        &
     &          INCREMENT
              USE ESTRUCT, ONLY :                                       &
     &          DAT_METODO,                                             &
     &          XY
              INTEGER(KIND=4) :: IMAL
              REAL(KIND=16) :: ARP
              REAL(KIND=16) :: ALEA
              REAL(KIND=16) :: FDEN
              TYPE (DAT_METODO) :: MET
              TYPE (XY) :: P(1:INCREMENT+1)
              REAL(KIND=16) :: STR(INCREMENT)
              CHARACTER(LEN=3) :: CMON
              INTEGER(KIND=4) :: IISEM
            END SUBROUTINE INV_FDEN_ANG
          END INTERFACE 
        END MODULE INV_FDEN_ANG__genmod
