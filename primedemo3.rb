class Primechk1
def is_prime?(num)
	n=num/2
  (2..n).each do |divisor|
    return false if num % divisor== 0
  end

  true
end

def primes(max)
  primes = []

  (2..max).each do |num|
    primes << num if is_prime?(num)
  end

 puts primes
end
end
pr=Primechk1.new
pr.primes(29)