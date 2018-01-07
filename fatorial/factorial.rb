#Algoritmo para calcular cantidad de ceros a la derecha de n!

puts "Ingrese numero:"
value = gets.chomp 
def factorial(n)
  n == 0 ? 1 : n * factorial(n-1) 
end
result = factorial(value.to_i).to_s
p value + "! = " + result
cont = 0
result.reverse.each_char { |value| value == '0' ? cont += 1 : break }
p "Numero de ceros a la derecha: " + cont.to_s
gets()