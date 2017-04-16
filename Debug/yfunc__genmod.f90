        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:44 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE YFUNC__genmod
          INTERFACE 
            FUNCTION YFUNC(N1,NS1,N2,NS2,P,P1,P2)
              USE ESTRUCT
              INTEGER(KIND=4) :: N1
              INTEGER(KIND=4) :: NS1
              INTEGER(KIND=4) :: N2
              INTEGER(KIND=4) :: NS2
              TYPE (XYZ) :: P
              TYPE (XYZ) :: P1
              TYPE (XYZ) :: P2
              REAL(KIND=16) :: YFUNC
            END FUNCTION YFUNC
          END INTERFACE 
        END MODULE YFUNC__genmod
