lines = ' '
mtx = []

puts "Entrada igual o enunciado da questão (sem espaços depois das vírgulas):\n\n"

# Pegar entrada igual o enunciado coloca:

def arrayTransform (arg)
    arg = arg.delete('[')
    arg = arg.delete(']')
    arg = arg.split(',')

    arg = arg.map { |item| item.to_i }

    return arg
end

while lines[-1] != ']'
    lines = gets.chomp
    mtx.insert(-1, arrayTransform(lines))
end

# Transposição:

mtx = mtx.transpose

# Remover coluna (que já é linha):

if mtx.length % 2 == 0
    mtx.delete_at(mtx.length / 2 - 1)
    mtx.delete_at(mtx.length / 2)
else
    mtx.delete_at(mtx.length / 2)
end

# Saída:

endchar = ','

print "\n"+'['

for i in 0...mtx.length
    if (i == mtx.length - 1)
        endchar = ']'
    end

    puts mtx[i].inspect+endchar
end


