 #Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que
 #posee

 file = File.open('peliculas.txt', 'r')
 peliculas = file.readlines.length
 file.close

 puts peliculas