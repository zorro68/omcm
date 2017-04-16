        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:31:03 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE POLI_R__genmod
          INTERFACE 
            SUBROUTINE POLI_R(N1,N2,ARP,ARE,ATOT,P,STR,C1,C2,PC)
              USE GLOBAL
              USE ESTRUCT
              INTEGER(KIND=4) :: N1
              INTEGER(KIND=4) :: N2
              REAL(KIND=16) :: ARP
              REAL(KIND=16) :: ARE
              REAL(KIND=16) :: ATOT
              TYPE (XY) :: P(1:INCREMENT+1)
              REAL(KIND=16) :: STR(INCREMENT)
              TYPE (XYZ) :: C1
              TYPE (XYZ) :: C2
              TYPE (XYZ) :: PC
            END SUBROUTINE POLI_R
          END INTERFACE 
        END MODULE POLI_R__genmod
