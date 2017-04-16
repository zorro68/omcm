        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:48 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE CALCFUNC__genmod
          INTERFACE 
            FUNCTION CALCFUNC(VARIABLE,CFUN)
              USE ESTRUCT
              REAL(KIND=16) :: VARIABLE
              TYPE (CF) :: CFUN
              REAL(KIND=16) :: CALCFUNC
            END FUNCTION CALCFUNC
          END INTERFACE 
        END MODULE CALCFUNC__genmod
