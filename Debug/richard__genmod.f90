        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 12:30:49 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE RICHARD__genmod
          INTERFACE 
            RECURSIVE SUBROUTINE RICHARD(NB,P,H,NPASOS,ORDEN,RES)
              USE ESTRUCT
              INTEGER(KIND=4) :: NB
              TYPE (RCSTFI) :: P
              REAL(KIND=16) :: H
              INTEGER(KIND=4) :: NPASOS
              INTEGER(KIND=4) :: ORDEN
              REAL(KIND=16) :: RES
            END SUBROUTINE RICHARD
          END INTERFACE 
        END MODULE RICHARD__genmod
