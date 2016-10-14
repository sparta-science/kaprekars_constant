require 'kaprekar'

RSpec.describe Kaprekar do
  describe '#largest_digit' do
    it 'returns the largest digit in 1234' do
      expect(Kaprekar.new(1234).largest_digit).to eq(4)
    end

    it 'returns the largest digit in 3253' do
      expect(Kaprekar.new(3253).largest_digit).to eq(5)
    end

    it 'returns the largest digit in 9800' do
      expect(Kaprekar.new(9800).largest_digit).to eq(9)
    end

    it 'returns the largest digit in 4444' do
      expect(Kaprekar.new(4444).largest_digit).to eq(4)
    end

    it 'returns the largest digit in 120' do
      expect(Kaprekar.new(120).largest_digit).to eq(2)
    end
  end

  describe '#desc_digits' do
    it 'performs the descending digit operation on 1234' do
      expect(Kaprekar.new(1234).desc_digits).to eq(4321)
    end

    it 'performs the descending digit operation on 3253' do
      expect(Kaprekar.new(3253).desc_digits).to eq(5332)
    end

    it 'performs the descending digit operation on 9800' do
      expect(Kaprekar.new(9800).desc_digits).to eq(9800)
    end

    it 'performs the descending digit operation on 4444' do
      expect(Kaprekar.new(4444).desc_digits).to eq(4444)
    end

    it 'performs the descending digit operation on 120' do
      expect(Kaprekar.new(120).desc_digits).to eq(2100)
    end
  end

  describe '#asc_digits' do
    it 'performs the ascending digit operation on 1234' do
      expect(Kaprekar.new(1234).asc_digits).to eq(1234)
    end

    it 'performs the ascending digit operation on 3253' do
      expect(Kaprekar.new(3253).asc_digits).to eq(2335)
    end

    it 'performs the ascending digit operation on 9800' do
      expect(Kaprekar.new(9800).asc_digits).to eq(89)
    end

    it 'performs the ascending digit operation on 4444' do
      expect(Kaprekar.new(4444).asc_digits).to eq(4444)
    end

    it 'performs the ascending digit operation on 120' do
      expect(Kaprekar.new(120).asc_digits).to eq(12)
    end
  end

  describe '#steps_until_kaprekar' do
    it 'returns 2 steps for 6589' do
      expect(Kaprekar.new(6589).steps_until_kaprekar).to eq(2)
    end

    it 'returns 5 steps for 5455' do
      expect(Kaprekar.new(5455).steps_until_kaprekar).to eq(5)
    end

    it 'returns 0 steps for 6174' do
      expect(Kaprekar.new(6174).steps_until_kaprekar).to eq(0)
    end

    it 'raises an error for invalid number 1111' do
      expect{ (Kaprekar.new(1111).steps_until_kaprekar) }.to raise_exception("4-digit number must have at least two different digits")
    end
  end
end
