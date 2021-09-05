print "Digite os valores de a: "
a = gets.to_i

print "Digite os valores de b: "
b = gets.to_i

print "Digite os valores de c: "
c = gets.to_i

def eq2g (a, b, c)

    delta = b ** 2 - 4 * a * c

    if (delta < 0)
        return false
    elsif (delta == 0)
        return (-b / (2 * a))
    else
        return "[#{(-b - Math.sqrt(delta)) / (2 * a)}, #{(-b + Math.sqrt(delta)) / (2 * a)}]";
    end

end

puts eq2g(a,b,c)