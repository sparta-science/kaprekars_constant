class Kaprekar
  KAPREKAR_CONSTANT = 6174

  def self.steps_to_kaprekar(number)
    raise "Input not long enough" if self.is_number_invalid?(number)
    steps = 0
    current_number = number

    while KAPREKAR_CONSTANT != current_number do
      number_as_string = current_number.to_s
      number_as_string_length = number_as_string.length
      (4 - number_as_string_length).times { |i| number_as_string << "0" }

      number_asc = number_as_string.chars.sort
      number_desc = number_asc.reverse
      current_number = number_desc.join.to_i - number_asc.join.to_i
      steps += 1
    end

    steps
  end

  def self.is_number_invalid?(number)
    number.to_s.length < 4
  end
end
