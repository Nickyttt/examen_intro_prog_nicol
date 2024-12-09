Funcion menu(mem)
	Escribir "=================================================================="
	Escribir "¡Hola, vamos a calcular las notal finales de tus estudiantes:)! "
	Escribir "=================================================================="
	Escribir "¿Qué deseas hacer? "
	Escribir "1.Registrarme "
	Escribir "2.Resgitrar 3 notas parciales "
	Escribir "3.Registrar inasistencias "
	Escribir "4.Obtener listado de notas finales"
	Escribir "0.Salir, es todo por hoy"
FinFuncion
Algoritmo notasFinales
	Repetir
		menu(mem)
		Leer opc
		Si opc = "1" Entonces
				Escribir "Primero deberás registar tu código estudiantil y nombre: "
				Escribir "============================================="
				Escribir "============================================="
				Escribir "Código: "
				leer cod
				Escribir "============================================="
				Escribir "============================================="
				Escribir "Nombre: "
				leer nom
				Escribir "============================================="
				Escribir "============================================="
		FinSi
		Si opc = "2" Entonces 
			Escribir "Digita las 3 notas acomuladas en el corte del estudiante, ", nom 
			Escribir "============================================="
			Escribir "============================================="
				Escribir "Nota 1"
				Leer nota1
				Escribir "============================================="
				Escribir "Nota 2"
				Leer nota2
				Escribir "============================================="
				Escribir "Nota 3"
				Leer nota3
				Escribir "============================================="
				Escribir "Las notas digitadas del estudiante ", nom " son: ", nota1, ", ", nota2, ", ", nota3, ". "
				parc = (nota1 + nota2 + nota3)/3
				Escribir "============================================="
				Escribir "Su nota parcial es: ", parc
				Escribir "============================================="
		FinSi
		si opc = "3" entonces 
			Escribir "============================================="
			Escribir "Digite el número de inasistencias del estudiante ", nom 
			Escribir "============================================="
				Escribir "clases inasistidas: "
				Leer inas
				Escribir "============================================="
				Escribir "============================================="
				Si inas >= 10 y inas <= 15 Entonces
					notafinal = parc - 0.5
					Escribir "============================================="
					Escribir "Su nota disminuirá 0.5 debido a la cantidad de fallas"
					Escribir "============================================="
					si inas > 15 Entonces
						notafinal = parc - 1.0
						Escribir "============================================="
						Escribir "Su nota disminuirá 1.0 debido a la cantidad de fallas"
						Escribir "============================================="
					FinSi
				sino 
					si inas < 10 Entonces 
						notafinal = parc
						Escribir "====================================================="
						Escribir "Felicitaciones" 
						Escribir "Tu nota no se verá afectada ya que no tienes ninguna inasistencia"
						Escribir "====================================================="
					FinSi
				FinSi
		FinSi
		si opc = "4" Entonces
			Escribir "============================================="
			Escribir  "El estudiante, ", nom, " ", "De código: " cod, " "
			Escribir "============================================="
			Escribir "con notas: ", nota1, ", ", nota2, ", ", nota3 ".", "Durante el primer corte"
			Escribir "============================================="
			Escribir "Con ", inas, " inasistencias"
			Escribir "============================================="
			Escribir "Ha alcanzado una nota final de: ",notafinal
			
		FinSi
	Hasta Que opc == "0"
	
FinAlgoritmo


