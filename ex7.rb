print ("Digite um lista no formato: [2,5,3,...n]: ")
input = gets.chomp # como ler array?

input = input.delete('[')
input = input.delete(']')
input = input.split(',')

input = input.map { |item| item.to_i }

def isPrime? (num)
    primo = true;

    for i in 2..Math.sqrt(num).round
        if (num % i == 0)
            primo = false;
        end
    end

    if (primo && num > 1)
        return true
    else
        return false
    end 
end

primos = []

for i in 0..input.length-1
    if (isPrime?(input[i]))
        primos.insert(-1, input[i])
    end
end

puts primos.inspect