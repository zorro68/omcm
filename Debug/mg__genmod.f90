        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:44 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE MG__genmod
          INTERFACE 
            FUNCTION MG(NB1,NB2,NG1,NG2,MOMENTO)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB1
              INTEGER(KIND=4) :: NB2
              INTEGER(KIND=4) :: NG1
              INTEGER(KIND=4) :: NG2
              TYPE (NNN) :: MOMENTO
              REAL(KIND=16) :: MG
            END FUNCTION MG
          END INTERFACE 
        END MODULE MG__genmod
