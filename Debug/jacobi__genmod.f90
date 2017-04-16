        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:31:31 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE JACOBI__genmod
          INTERFACE 
            SUBROUTINE JACOBI(N,A,T,SORT)
              INTEGER(KIND=4) :: N
              REAL(KIND=16) :: A(1:N,1:N)
              REAL(KIND=16) :: T(1:N,1:N)
              LOGICAL(KIND=4) :: SORT
            END SUBROUTINE JACOBI
          END INTERFACE 
        END MODULE JACOBI__genmod
