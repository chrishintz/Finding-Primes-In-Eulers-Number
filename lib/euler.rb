class Euler
  require 'mathn'
  require 'csv'
  require 'bigdecimal'

  def factorial(n)
    if n == 0
      1
    else
      n * factorial(n-1)
    end
  end

  def calculate_eulers_constant
    @euler_number = 0
    (0..500).each do |i|
      @euler_number += (BigDecimal.new(1)/BigDecimal.new(factorial(i)))
    end
    @euler_array = @euler_number.to_s.split('.')[1].chars
  end

  def calculate(digits, prime_number)
    calculate_eulers_constant
    num_of_digits(digits)
    find_prime_number(prime_number)
  end

  def num_of_digits(n)
    @new_array = []
    i = 0
    while n-1 <= @euler_array.length
      @new_array << @euler_array[i..n-1].join
      i += 1
      n += 1
    end
    @new_array
  end

  def find_prime_number(n)
    @prime_array = []
    @new_array.each do |i|
      if Prime.prime?(i.to_i)
        @prime_array << i
      end
    end
    @prime_array[n-1]
  end
end
