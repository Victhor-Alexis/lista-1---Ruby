print "Digite o tamanho da largura: "
num = gets.to_i
linha = '*';

for i in (1..num*2 - 1) 
    puts linha

    if i < num
        linha += '*'
    else
        linha = linha.chomp('*')
    end
end