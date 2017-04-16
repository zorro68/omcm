        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:38 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE CONVERT__genmod
          INTERFACE 
            SUBROUTINE CONVERT(SMATRIZ,N,S)
              INTEGER(KIND=4) :: N
              REAL(KIND=16) :: SMATRIZ(N,N)
              REAL(KIND=16) :: S((N*(N-1)/2)+N)
            END SUBROUTINE CONVERT
          END INTERFACE 
        END MODULE CONVERT__genmod
