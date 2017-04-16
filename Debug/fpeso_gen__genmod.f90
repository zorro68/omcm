        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:31:03 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE FPESO_GEN__genmod
          INTERFACE 
            SUBROUTINE FPESO_GEN(NB1,NB2,P1,P2,P12,ARPR,ATOTR,ARPT,ARPF,&
     &PPOLIGR,PPOLIGT,PPOLIGF,STRPOLIGR,STRPOLIGT,STRPOLIGF)
              USE GLOBAL
              USE ESTRUCT
              INTEGER(KIND=4) :: NB1
              INTEGER(KIND=4) :: NB2
              TYPE (XYZ) :: P1
              TYPE (XYZ) :: P2
              TYPE (XYZ) :: P12
              REAL(KIND=16) :: ARPR
              REAL(KIND=16) :: ATOTR
              REAL(KIND=16) :: ARPT
              REAL(KIND=16) :: ARPF
              TYPE (XY) :: PPOLIGR(1:INCREMENT+1)
              TYPE (XY) :: PPOLIGT(1:INCREMENT+1)
              TYPE (XY) :: PPOLIGF(1:INCREMENT+1)
              REAL(KIND=16) :: STRPOLIGR(INCREMENT)
              REAL(KIND=16) :: STRPOLIGT(INCREMENT)
              REAL(KIND=16) :: STRPOLIGF(INCREMENT)
            END SUBROUTINE FPESO_GEN
          END INTERFACE 
        END MODULE FPESO_GEN__genmod
