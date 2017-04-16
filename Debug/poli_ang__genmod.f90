        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:42 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE POLI_ANG__genmod
          INTERFACE 
            SUBROUTINE POLI_ANG(N1,N2,ARP,P,STR,CLASE,C1,C2,PC)
              USE GLOBAL
              USE ESTRUCT
              INTEGER(KIND=4) :: N1
              INTEGER(KIND=4) :: N2
              REAL(KIND=16) :: ARP
              TYPE (XY) :: P(1:INCREMENT+1)
              REAL(KIND=16) :: STR(INCREMENT)
              CHARACTER(LEN=1) :: CLASE
              TYPE (XYZ) :: C1
              TYPE (XYZ) :: C2
              TYPE (XYZ) :: PC
            END SUBROUTINE POLI_ANG
          END INTERFACE 
        END MODULE POLI_ANG__genmod
