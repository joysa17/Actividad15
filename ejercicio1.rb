#1 Crear un método que reciba dos strings, este método creará un archivo index.html y
#pondrá como párrafo cada uno de los strings recibidos.

def create_index(p1, p2)
  p1 = "<p>#{p1}</p>"
  p2 = "<p>#{p2}</p>"
  file = File.open('index.html','w')
  file.puts p1,p2
  file.close
end

create_index("Buenas", "Tardes")

#2 Crear un método similar al anterior, que además pueda recibir un arreglo. Si el
#arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada
#uno de los elementos.
def add_list(list)
  return if list.count.zero?
  file = File.open('index.html','a')
  file.puts '<ol>'
  list.each { |ele| file.puts "<li>#{ele}</li>"}
  file.puts '</ol>'
  file.close
end

ordered_list = %w[ele1 ele2 ele3 ele4]
add_list(ordered_list)

#3 Crear un tercer método que además pueda recibir un color. Agregar color de fondo
#a los párrafos.

def add_color(color)
	back_color = "style = 'background-color:#{color}'"
	file = File.open('index.html','r')
	lines = file.readlines
	new_lines = lines.map do |line|
		if line[1] == 'p'
			line = '<p ' + back_color + line.split('<p')[1]
		else
			line
		end	
	end
	file.close	
	file = File.open("index.html", "w") 
	file.puts new_lines 
	file.close
end

add_color('blue')

#4 El retorno de los métodos debe devolver nil.