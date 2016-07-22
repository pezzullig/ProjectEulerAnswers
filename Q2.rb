def fib(up_to)
    fibonacci = [1,2]
    i = 1
    while fibonacci[fibonacci.length - 1 ] < up_to
        fibonacci[i+1] = fibonacci[i] + fibonacci[i-1]
        i+=1
    end
    my_sum2 = 0
    fibonacci.each do |x|
        if x % 2 == 0
            my_sum2 += x
        end
    end
puts my_sum2
end

fib(4_000_000)
