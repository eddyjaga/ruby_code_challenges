=begin
    To create an algorithm that finds prime numbers, you have to decide if the number in question can
    only be divided by itself and 1. To do that, you have to check if the number can be divided by itself
    and each number below it, down to 1.
    The process in Ruby is to check whether each number is divisible by these integers, and if it is, then
    Ruby designates it as a prime number.
=end

def is_prime(n)
    i = 2
    primes = []
    while i <= n do
        is_prime = true
        primes.each do |n|
            if i % n  == 0 && i != n
                is_prime = false
            end
        end
        if is_prime
            i.times do |n|
                if n > 1 && i % n == 0 && n != i
                    is_prime = false
                end
            end
        end
        if is_prime
            primes.push(i)
        end
        i+=1
    end
    primes
end

print is_prime(1000)