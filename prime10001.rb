=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

class Prime10001
  primes = *(2..10001)
  primes.each do |prime|
    primes.each do |potential|
      if prime != potential and potential % prime == 0
        primes.delete(potential)
      end
    end
  end

  puts primes[1000]
end