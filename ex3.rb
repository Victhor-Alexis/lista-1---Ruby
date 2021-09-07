count = 0
while (count <= 100)

    if (count == 0)
        print "#{0}, "
    elsif (count % 5 == 0 && count % 3 == 0)
        print "fizzbuzz, "
    elsif (count % 5 == 0)
        print "buzz, "
    elsif (count % 3 == 0)
        print "fizz, "
    else
        print "#{count}, "
    end

    count += 1
end

print "\n"