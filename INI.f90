!**********************************************************************
!**** SUBRUTINAS Y FUNCIONES PARA LA LECTURA DE ARCHIVOS TIPO *.INI ***
!**********************************************************************
! -------------------------------------------------------------------
! --- SUBROUTINA QUE CREA UNA NUEVA SECCION EN EL FICHERO DADO.
! --- SI LA SECCION EXISTE, NO HACE NADA
! -------------------------------------------------------------------
	SUBROUTINE CREARSECCION(FICHERO,SECCION)
		CHARACTER*(*) FICHERO,SECCION
		INTEGER*4 I,F
		LOGICAL ENCONTRADO,COMPARACADENA
		CHARACTER*150 LINEA,LINEAAUX,SECCIONAUX
		
		LINEA=""
		LINEAAUX=""
		SECCIONAUX=""
		ENCONTRADO=.FALSE.
		OPEN(1,FILE=FICHERO,STATUS='UNKNOWN')
		DO WHILE (.NOT. EOF(1))
			READ(1,'(A150)')LINEA
			IF (LINEA(1:1)=='[') THEN
				!OBTENEMOS EL NOMBRE DE LA SECCION SIN CORCHETES
				DO I=2,LEN_TRIM(LINEA)-1
					LINEAAUX(I-1:I-1)=LINEA(I:I)
				ENDDO
				LINEA=""
				LINEA=LINEAAUX
				LINEAAUX=""
				SECCIONAUX=SECCION
				!SI ES LA SECCION BUSCADA ENTONCES...
				IF (COMPARACADENA(LINEA,SECCIONAUX)==.TRUE.) THEN
					ENCONTRADO=.TRUE.
					IF (LEN_TRIM(LINEA).NE.LEN_TRIM(SECCION))THEN
						ENCONTRADO=.FALSE.
					ELSE
						EXIT
					ENDIF
				ENDIF
			ENDIF
		ENDDO
		IF (ENCONTRADO==.FALSE.) THEN
			WRITE(1,'((/,A1,A,A1))')'[',TRIM(SECCION),']'
		ENDIF
		CLOSE(1)

	END

! -------------------------------------------------------------------
! --- SUBRUTINA QUE GUARDA EL VALOR ASOCIADO A LA CLAVE Y SECCION
! --- SI LA CLAVE NO EXISTE LA CREA, SI EXISTE LA MODIFICA
! -------------------------------------------------------------------
	SUBROUTINE GUARDAVALOR(FICHERO,SECCION,CLAVE,VALOR)
		CHARACTER*(*) FICHERO,SECCION,CLAVE,VALOR
		CHARACTER*150 LINEA,LINEA1,LINEAAUX,SECCIONAUX,CLAVEAUX
		LOGICAL COMPARACADENA
		INTEGER*4 ESCRITO
		
		LINEA=""
		LINEA1=""
		LINEAAUX=""
		SECCIONAUX=""
		CLAVEAUX=""
		SECCIONAUX=SECCION
		CALL CREARSECCION(FICHERO,SECCIONAUX)
		OPEN(1,FILE=FICHERO,STATUS='OLD')
		OPEN(2,STATUS='SCRATCH')
		
		ESCRITO=0
		DO WHILE (.NOT. EOF(1))
			READ(1,'(A150)')LINEA
			WRITE(2,'(A150)')LINEA
			!COMPROBAMOS SI ES UNA SECCIÓN
			IF (LINEA(1:1)=='[') THEN
				!OBTENEMOS EL NOMBRE DE LA SECCION SIN CORCHETES
				DO I=2,LEN_TRIM(LINEA)-1
					LINEAAUX(I-1:I-1)=LINEA(I:I)
				ENDDO
				LINEA=""
				LINEA=LINEAAUX
				LINEAAUX=""
				!SI ES LA SECCION BUSCADA ENTONCES...
				SECCIONAUX=""
				SECCIONAUX=SECCION
				IF (COMPARACADENA(LINEA,SECCIONAUX)==.TRUE.) THEN
					!BUSCAMOS EN LOS VALORES DE LA SECCION
					IF (EOF(1))THEN
						WRITE(1,*)
						WRITE(1,'((A\))')CLAVE,'=',TRIM(VALOR)
						CLOSE(1)
						CLOSE(2)
						ESCRITO=1
						RETURN
					ENDIF
					DO WHILE (.NOT. EOF(1))
						READ(1,'(A150)')LINEA
						IF (LINEA.NE."") WRITE(2,'(A150)')LINEA
						!SI ENCONTRAMOS OTRA SECCION ES PORQUE NO LA ENCONTRO
						IF (LINEA(1:1)=='[') THEN
							BACKSPACE(2)
							WRITE(2,'((A\))')CLAVE,'=',TRIM(VALOR)
							WRITE(2,*)
							WRITE(2,*)
							BACKSPACE(1)
							ESCRITO=1
							EXIT
						ENDIF
						
						!BUSCA EL SIGNO =
						POS=INDEX(LINEA,'=')
						LINEAAUX=""
						DO I=1,POS-1
							LINEAAUX(I:I)=LINEA(I:I)
						ENDDO
						LINEA1=LINEAAUX

						!SI LA LINEA LEIDA ES LA CLAVE...
						CLAVEAUX=CLAVE
						IF(COMPARACADENA(LINEA1,CLAVEAUX)==.TRUE.)THEN
							BACKSPACE(2)
							WRITE(2,'((A\))')CLAVE,'=',TRIM(VALOR)
							WRITE(2,*)
							ESCRITO=1
							EXIT
						ENDIF
					ENDDO
					IF(ESCRITO==0)THEN
						WRITE(2,'((A\))')CLAVE,'=',TRIM(VALOR)
						WRITE(2,*)
					ENDIF
				ENDIF
			ENDIF
		ENDDO
		REWIND(1)
		REWIND(2)
		DO WHILE (.NOT. EOF(2))
			READ(2,'(A150)')LINEA
			WRITE(1,'(A)')TRIM(LINEA)
		ENDDO
		CLOSE(1)
		CLOSE(2)
	END

! -------------------------------------------------------------------      
! --- FUNCIÓN PARA LEER UN VALOR ASOCIADO CON LA CLAVE Y SECCIÓN DADAS.
! --- Si el valor no se encuentra en el fichero, devuelve una cadena vacía.
! -------------------------------------------------------------------
	CHARACTER*(*) FUNCTION LEERVALOR(FICHERO,SECCION,CLAVE)
		CHARACTER*(*) FICHERO,SECCION,CLAVE
		CHARACTER*150 LINEA,LINEA1,LINEAAUX,SECCIONAUX,CLAVEAUX
		INTEGER*4 I,POS
		LOGICAL COMPARACADENA
		
		LINEA=""
		LINEA1=""
		LINEAAUX=""
		SECCIONAUX=""
		CLAVEAUX=""
		OPEN(10,FILE=FICHERO,STATUS='OLD')

		DO WHILE (.NOT. EOF(10))
			READ(10,'(A150)')LINEA
			!COMPROBAMOS SI ES UNA SECCIÓN
			IF (LINEA(1:1)=='[') THEN
				!OBTENEMOS EL NOMBRE DE LA SECCION SIN CORCHETES
				LINEAAUX=""
				DO I=2,LEN_TRIM(LINEA)-1
					LINEAAUX(I-1:I-1)=LINEA(I:I)
				ENDDO
				LINEA=""
				LINEA=LINEAAUX
				LINEAAUX=""
				!SI ES LA SECCION BUSCADA ENTONCES...
				SECCIONAUX=SECCION
				IF (COMPARACADENA(LINEA,SECCIONAUX)==.TRUE.) THEN
					!BUSCAMOS EN LOS VALORES DE LA SECCION
					DO WHILE (.NOT. EOF(10))
						READ(10,'(A150)')LINEA
						!SI ENCONTRAMOS OTRA SECCION ES PORQUE NO LA ENCONTRO
						IF (LINEA(1:1)=='[') THEN
							LEERVALOR=""
							CLOSE(10)
							RETURN
						ENDIF
						
						!BUSCA EL SIGNO =
						POS=INDEX(LINEA,'=')
						LINEAAUX=""
						DO I=1,POS-1
							LINEAAUX(I:I)=LINEA(I:I)
						ENDDO
						LINEA1=LINEAAUX

						!SI LA LINEA LEIDA ES LA CLAVE...
						CLAVEAUX=CLAVE
						IF(COMPARACADENA(LINEA1,CLAVEAUX)==.TRUE.)THEN
							!BUSCA EL SIGNO =
							POS=INDEX(LINEA,'=')
							LINEAAUX=""
							DO I=POS+1,LEN_TRIM(LINEA)
								LINEAAUX(I-POS:I-POS)=LINEA(I:I)
							ENDDO
							LEERVALOR=LINEAAUX
							CLOSE(10)
							RETURN
						ENDIF
					ENDDO
				ENDIF
			ENDIF
		ENDDO

		CLOSE(10)

	END FUNCTION

! -------------------------------------------------------------------
! --- SUBRUTINA QUE COMPARA DOS CADENAS. DEBUELVE 1 SI SON IDENTICAS
! --- Y CERO SI NO LO SON. NO DISTINGUE ENTRE MAYUSCULAS Y MINUSCULAS
! -------------------------------------------------------------------
	LOGICAL FUNCTION COMPARACADENA(C1,C2)
		CHARACTER*(*) C1,C2
		INTEGER*4 I,L
				
		CALL CMAYMIN(C1,1)
		CALL CMAYMIN(C2,1)
		
		IF (LEN_TRIM(C1).NE.LEN_TRIM(C2)) THEN
			COMPARACADENA=.FALSE.
			RETURN
		ELSE
			L=LEN_TRIM(C1)
		ENDIF
		
		DO I=1,L
			IF(C1(I:I).NE.C2(I:I))THEN
				COMPARACADENA=.FALSE.
				RETURN
			ENDIF
		ENDDO
		COMPARACADENA=.TRUE.
	END

! --------------------------------------------------------------------
! -- SUBRUTINA QUE COMVIERTE TODA LA CADENA A MAYUSCULAS (MM=1) O A 
! -- MINUSCULAS (MM=0)
! --------------------------------------------------------------------
	SUBROUTINE CMAYMIN(C,MM)
		CHARACTER*(*) C
		INTEGER*4 MM,I
		
		IF (MM==1) THEN
			DO I=1,LEN_TRIM(C)	
				IF (ICHAR(C(I:I))>=97.AND.ICHAR(C(I:I))<=122)C(I:I)=CHAR(ICHAR(C(I:I))-32)
			ENDDO
		ELSE IF (MM==0) THEN
			DO I=1,LEN_TRIM(C)
				IF (ICHAR(C(I:I))>=65.AND.ICHAR(C(I:I))<=90)C(I:I)=CHAR(ICHAR(C(I:I))+32)
			ENDDO
		ENDIF
	END

! ----------------------------------------------------------------------------
!     FUNCION QUE LEE DEL FICHERO DE DATOS UN NUMERO ENTERO
! ----------------------------------------------------------------------------
	INTEGER*4 FUNCTION LEERVALOR_INT(FICHERO,SECCION,CLAVE)
		CHARACTER*(*) FICHERO,SECCION,CLAVE
		CHARACTER*150 CVALOR,LEERVALOR
		
		CVALOR=LEERVALOR(FICHERO,SECCION,CLAVE)
		IF (CVALOR=='') THEN
			LEERVALOR_INT=0
		ELSE
			READ(CVALOR,*)LEERVALOR_INT
		ENDIF
	END

! ----------------------------------------------------------------------------
!     FUNCION QUE LEE DEL FICHERO DE DATOS UN NUMERO REAL
! ----------------------------------------------------------------------------
	REAL*16 FUNCTION LEERVALOR_REAL(FICHERO,SECCION,CLAVE)
		CHARACTER*(*) FICHERO,SECCION,CLAVE
		CHARACTER*150 CVALOR,LEERVALOR
		
		CVALOR=LEERVALOR(FICHERO,SECCION,CLAVE)
		IF (CVALOR=='') THEN
			LEERVALOR_REAL=0.Q0
		ELSE
			READ(CVALOR,*)LEERVALOR_REAL
		ENDIF
	END

!***********************************************************************
!**** SUBRUTINAS Y FUNCIONES PARA CONVERSION DE DATOS (Nº Y CARACTERES)*
!***********************************************************************
! ----------------------------------------------------------------------------
!     FUNCION QUE TOMA UN ENTERO POSITIVO Y DEVUELVE UNA CADENA DE CARACTERES
! ----------------------------------------------------------------------------
    CHARACTER*(*) FUNCTION INTTOSTR(NUMERO)
		INTEGER*4 NUMERO
		CHARACTER*150 CVALOR
    
		INTTOSTR=""
		WRITE(CVALOR,*)NUMERO
		INTTOSTR=ADJUSTL(CVALOR)
    END

! ----------------------------------------------------------------------------
!     FUNCION QUE TOMA UN REAL*16 Y DEVUELVE UNA CADENA DE CARACTERES
! ----------------------------------------------------------------------------
    CHARACTER*(*) FUNCTION REALTOSTR(NUMERO)
		REAL*16 NUMERO
		CHARACTER*150 CVALOR
    
		REALTOSTR=""
		WRITE(CVALOR,*)NUMERO
		REALTOSTR=TRIM(ADJUSTL(CVALOR))
    END

! ----------------------------------------------------------------------------
!     FUNCION QUE TOMA UN REAL*8 Y DEVUELVE UNA CADENA DE CARACTERES
! ----------------------------------------------------------------------------
    CHARACTER*(*) FUNCTION REAL8TOSTR(NUMERO)
		REAL*8 NUMERO
		CHARACTER*150 CVALOR
    
		REAL8TOSTR=""
		WRITE(CVALOR,*)NUMERO
		REAL8TOSTR=TRIM(ADJUSTL(CVALOR))
    END