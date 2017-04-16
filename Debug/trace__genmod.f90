        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:57 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE TRACE__genmod
          INTERFACE 
            FUNCTION TRACE(N,M)
              INTEGER(KIND=4) :: N
              REAL(KIND=16) :: M(1:N,1:N)
              REAL(KIND=16) :: TRACE
            END FUNCTION TRACE
          END INTERFACE 
        END MODULE TRACE__genmod
