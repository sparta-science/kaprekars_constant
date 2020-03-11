class Kaprekar
  def self.steps_to_kaprekar(number)
    steps =0
    result = number
    while result != 6174
      descending = sort_digits(result, false )
      ascending = sort_digits(result, true )
      result = descending - ascending
      steps += 1
    end
    steps
  end

  def self.sort_digits(number, ascending)
    sorted = number.to_s.chars.sort
    if !ascending
      sorted = sorted.reverse
    end
    sorted.join.to_i
  end
end
