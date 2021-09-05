print "Digite um número: "
num = gets.to_i
primo = true;

# Todo número composto n tem um fator primo menor ou igual a raiz de n
for i in 2..Math.sqrt(num).round
    if (num % i == 0)
        primo = false;
    end
end

if (primo && num > 1)
    puts "#{num} é primo!"
else
    puts "#{num} não é primo!"
end 