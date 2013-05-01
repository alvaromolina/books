# language: es
Característica: Administrar libros
	Para que otros puedan ver los libros y comprarlos
	Como un administrador
	Quiero poder administrar libros (crear, modificar , borrar, listar)
	Escenario: Añadir un nuevo libro
		Dado que estoy en la pagina de administracio
		Cuando hago click en "Nuevo libro"
		Entonces voy a estar en la pagina de nuevo libro
		Y Lleno el "Titulo" con "100 años de soledad"
		Y Lleno la "Descripcion" con "Un buen libro"
		Cuando oprimo "Crear"
		Entonces voy a estar en la pagina de la pelicula "100 años de soledad"
		Entonces debo ver "Libro creada exitosamente!"
		Y debo ver "100 años de soledad"