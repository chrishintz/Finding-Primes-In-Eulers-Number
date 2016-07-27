class ArrayMath
  attr_reader :num
  def initialize(num)
    @num = []
    add(num)
  end

  def euler
    30.times do |n|
      a = ArrayMath.new(1)
      a.factorial(n)
      add(a.num.join)
    end
  end

  def factorial(n)
    until n == 0
      times(n)
      n -= 1
    end
  end

  def divide(n)
    subNum = num.join
    result = 0
    until num.join.to_i < n
      subtract(n)
      result += 1
    end
    @num = result.to_s.chars.map(&:to_i)
  end

  def times(n)
    addNum = num.join
    until n == 1
      add(addNum)
      n -= 1
    end
    self
  end


  def subtract(n)
    n = n.to_s.chars.map(&:to_i)
    l = [n.length, num.length].max - 1
    carry = false
    if n.length > num.length
      until num.length == n.length
        num.unshift(0)
      end
    else
      until n.length == num.length
        n.unshift(0)
      end
    end
    while l >= 0
      num[l] -= 1 if carry
      newNum = (num[l] || 0) - (n[l] || 0)
      if newNum < 0
        newNum = 10 + newNum
        carry = true
      else
        carry = false
      end
      num[l] = newNum
      l -= 1
    end
    num
    while !num[0].nil? && num[0].zero?
      num.shift
    end
    num
  end

  def add(addNum)
    addNum = addNum.to_s.chars.map(&:to_i)
    l = [addNum.length, num.length].max - 1
    if addNum.length > num.length
      until num.length == addNum.length
        num.unshift(0)
      end
    else
      until addNum.length == num.length
        addNum.unshift(0)
      end
    end
    carry = false
    while l >= 0
      num[l] += 1 if carry
      newNum = (num[l] || 0) + (addNum[l] || 0)
      if newNum > 9
        carry = true
        newNum -= 10
      else
        carry = false
      end
      num[l] = newNum
      l -= 1
    end
    num.unshift(1) if carry
    num
  end
end

a = ArrayMath.new(1870)
a.divide(3)
puts a.num.inspect
