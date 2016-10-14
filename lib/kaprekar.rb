class Kaprekar
  KAPREKARS_CONSTANT = 6174

  def initialize(num)
    @num = num
  end

  def largest_digit
    prepare_number(@num).max
  end

  def desc_digits
    prepare_number(@num).sort!.reverse!.inject { |a, i| a * 10 + i }
  end

  def asc_digits
    prepare_number(@num).sort!.inject { |a, i| a * 10 + i }
  end

  def steps_until_kaprekar
    validate_number!

    steps = 0
    until @num == KAPREKARS_CONSTANT
      @num = desc_digits - asc_digits
      steps += 1
    end

    steps
  end

  private

  def split_number(num)
    num.to_s.chars
  end

  def prepare_number(num)
    number = num.to_s.chars
    if number.length < 4
      number = [0] + number
    end
    number.map!(&:to_i)
  end

  def validate_number!
    if split_number(@num).uniq! && split_number(@num).uniq!.length < 2
      raise '4-digit number must have at least two different digits'
    end
  end
end
