Algoritmo asistencia_escolar
	Definir opcion, totalAsistencias, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Dimension id[100]
	Dimension estudiante[100]
	Dimension curso[100]
	Dimension fecha[100]
	Dimension horaEntrada[100]
	Dimension estado[100]
	Dimension observacion[100]
	totalAsistencias <- 0
	siguienteID <- 1
	//---------------------------------------//
	//--|menu_principal_asistencia_escolar|--//
	//---------------------------------------//
	Repetir
		Escribir "menu principal asistencia escolar"
		Escribir "1) registrar asistencia"
		Escribir "2) editar asistencia"
		Escribir "3) eliminar asistencia"
		Escribir "4) buscar asistencia"
		Escribir "5) listar asistencias"
		Escribir "6) ver detalles"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//--------------------------//
			//--|registrar_asistencia|--//
			//--------------------------//
			1:
				Escribir "registrar asistencia escolar"
				id[totalAsistencias + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "ingrese el nombre del estudiante:"
				Leer estudiante[totalAsistencias + 1]
				Escribir "ingrese el curso:"
				Leer curso[totalAsistencias + 1]
				Escribir "ingrese la fecha:"
				Leer fecha[totalAsistencias + 1]
				Escribir "ingrese la hora de entrada:"
				Leer horaEntrada[totalAsistencias + 1]
				Escribir "ingrese el estado (presente/ausente/tarde/excusa):"
				Leer estado[totalAsistencias + 1]
				Escribir "ingrese una observacion:"
				Leer observacion[totalAsistencias + 1]
				totalAsistencias <- totalAsistencias + 1
				Escribir "asistencia registrada correctamente."
			//-----------------------//
			//--|editar_asistencia|--//
			//-----------------------//
			2:
				Escribir "editar asistencia"
				Si totalAsistencias = 0 Entonces
					Escribir "no hay asistencias registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAsistencias Hacer
						Escribir id[i], " | ", estudiante[i], " | ", curso[i], " | ", fecha[i], " | ", horaEntrada[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asistencia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsistencias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre del estudiante:"
							Leer estudiante[i]
							Escribir "ingrese el nuevo curso:"
							Leer curso[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese la nueva hora de entrada:"
							Leer horaEntrada[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "ingrese la nueva observacion:"
							Leer observacion[i]
							Escribir "asistencia editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asistencia con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|eliminar_asistencia|--//
			//-------------------------//
			3:
				Escribir "eliminar asistencia"
				Si totalAsistencias = 0 Entonces
					Escribir "no hay asistencias registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAsistencias Hacer
						Escribir id[i], " | ", estudiante[i], " | ", curso[i], " | ", fecha[i], " | ", horaEntrada[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asistencia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsistencias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAsistencias Entonces
								Para j <- i Hasta totalAsistencias - 1 Hacer
									id[j] <- id[j + 1]
									estudiante[j] <- estudiante[j + 1]
									curso[j] <- curso[j + 1]
									fecha[j] <- fecha[j + 1]
									horaEntrada[j] <- horaEntrada[j + 1]
									estado[j] <- estado[j + 1]
									observacion[j] <- observacion[j + 1]
								FinPara
							FinSi
							totalAsistencias <- totalAsistencias - 1
							Escribir "asistencia eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asistencia con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|buscar_asistencia|--//
			//-----------------------//
			4:
				Escribir "buscar asistencia"
				Si totalAsistencias = 0 Entonces
					Escribir "no hay asistencias registradas."
				SiNo
					Escribir "ingrese el id de la asistencia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsistencias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", estudiante[i], " | ", curso[i], " | ", fecha[i], " | ", horaEntrada[i], " | ", estado[i], " | ", observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asistencia con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|listar_asistencias|--//
			//------------------------//
			5:
				Escribir "listar asistencias"
				Si totalAsistencias = 0 Entonces
					Escribir "no hay asistencias registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAsistencias Hacer
						Escribir id[i], " | ", estudiante[i], " | ", curso[i], " | ", fecha[i], " | ", horaEntrada[i], " | ", estado[i], " | ", observacion[i]
					FinPara
				FinSi
			//------------------//
			//--|ver_detalles|--//
			//------------------//
			6:
				Escribir "ver detalles de la asistencia"
				Si totalAsistencias = 0 Entonces
					Escribir "no hay asistencias registradas."
				SiNo
					Escribir "ingrese el id de la asistencia:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAsistencias Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la asistencia"
							Escribir "id: ", id[i]
							Escribir "estudiante: ", estudiante[i]
							Escribir "curso: ", curso[i]
							Escribir "fecha: ", fecha[i]
							Escribir "hora de entrada: ", horaEntrada[i]
							Escribir "estado: ", estado[i]
							Escribir "observacion: ", observacion[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asistencia con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalAsistencias = 0 Entonces
					Escribir "no hay asistencias registradas."
				SiNo
					totalPresentes <- 0
					totalAusentes <- 0
					totalTarde <- 0
					totalExcusas <- 0
					Para i <- 1 Hasta totalAsistencias Hacer
						Si estado[i] = "presente" Entonces
							totalPresentes <- totalPresentes + 1
						FinSi
						Si estado[i] = "ausente" Entonces
							totalAusentes <- totalAusentes + 1
						FinSi
						Si estado[i] = "tarde" Entonces
							totalTarde <- totalTarde + 1
						FinSi
						Si estado[i] = "excusa" Entonces
							totalExcusas <- totalExcusas + 1
						FinSi
					FinPara
					Escribir "estadistica general"
					Escribir "total de asistencias: ", totalAsistencias
					Escribir "estudiantes presentes: ", totalPresentes
					Escribir "estudiantes ausentes: ", totalAusentes
					Escribir "estudiantes con tardanza: ", totalTarde
					Escribir "estudiantes con excusa: ", totalExcusas
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asistencia escolar."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo