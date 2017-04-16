        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:44 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE FKH_POL__genmod
          INTERFACE 
            SUBROUTINE FKH_POL(L1,L2,GEXP1,GEXP2,PAH,PBH,PCH,K,PH)
              USE ESTRUCT
              INTEGER(KIND=4) :: L1
              INTEGER(KIND=4) :: L2
              REAL(KIND=16) :: GEXP1
              REAL(KIND=16) :: GEXP2
              REAL(KIND=16) :: PAH
              REAL(KIND=16) :: PBH
              REAL(KIND=16) :: PCH
              INTEGER(KIND=4) :: K
              TYPE (POLINOMIO) :: PH
            END SUBROUTINE FKH_POL
          END INTERFACE 
        END MODULE FKH_POL__genmod
