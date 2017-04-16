        !COMPILER-GENERATED INTERFACE MODULE: Sun Apr 16 21:49:38 2017
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE SPLIT__genmod
          INTERFACE 
            SUBROUTINE SPLIT(CADENA,SEPARADOR,SUBCADENA,NSUB)
              CHARACTER(*) :: CADENA
              CHARACTER(LEN=1) :: SEPARADOR
              CHARACTER(*) :: SUBCADENA(1:50)
              INTEGER(KIND=2) :: NSUB
            END SUBROUTINE SPLIT
          END INTERFACE 
        END MODULE SPLIT__genmod
