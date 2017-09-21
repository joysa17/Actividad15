#opcion 1.1
def show_stock_by_product 
    file = File.open('productos.txt','r').readlines
    new_lines []
    line.each {|line| new_lines.push(line.split(', ').map(&:chomp))}
   print new_lines

   new_lines.each do |details|
    name = details.shift
    sum =get_sum(details)
    puts "el stock del producto #{name} es #{sum}"
end
end

#opcion 1.2

def get_sum(details)
  sum = 0
  details.each do |ele|
    unless ele =="NR"
      sum += ele.to_i
      end 
    end
    return sum
end 



option = 0

while option != 6
  
  puts '1. Cantidad de productos existentes'
  puts '2. Ingresar nombre de producto'
  puts '3. productos no registrados en cada bodega'
  puts '4. productos con una existencia total menor a un valor ingresado por el usuario'
  puts '5. registrar un nuevo producto con su respectivo stock en cada bodega'
  puts '6. productos registrados'
end
case option
  when 1
       show_stock_by_product #opcion 1.1
  when 2
    puts "opcion"
  when 3
    puts "opcion"
  when 4
    puts "opcion"
  when 5
    puts "opcion"
  when 6
    puts 'Adios!'
  else
    puts 'Elija una opcion correcta'
  end
end 