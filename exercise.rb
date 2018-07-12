class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    split_arr = str.split(/\b/)
    split_arr.each do |i|
      if i.length > 4 && i[0] === i[0].upcase
        i.sub! i, 'Marklar'
      elsif i.length > 4
        i.sub! i, 'marklar'
      end
    end
    return split_arr.join('')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a = 0
    b = 1
    arr = []

    nth.times do
        temp = a
        a = b
        b = temp + b
          if a % 2 === 0
          arr.push(a)
          end
    end
    return arr.reduce(0, :+)
  end

end
