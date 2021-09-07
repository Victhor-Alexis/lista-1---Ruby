print ("Digite um lista no formato: [2,5,3,...n]: ")
input = gets.chomp # como ler array?

input = input.delete('[')
input = input.delete(']')
input = input.split(',')

input = input.map { |item| item.to_i }

primeiro = input[0]
quantidade = input.length
ultimo = input[-1]
soma = input.inject(:+)
media = input.inject(:+).to_f/input.length.to_f

if (quantidade % 2 != 0)
    mediana = input.sort[input.length/2]
else
    mediana = (input.sort[input.length/2 - 1] + input.sort[input.length/2]).to_f / 2
end

ordenada = input.sort

output = {
    :primeiro => primeiro, 
    :quantidade => quantidade, 
    :ultimo=> ultimo, 
    :soma=> soma, 
    :media => media, 
    :mediana=> mediana, 
    :ordenada => ordenada
}

puts output


