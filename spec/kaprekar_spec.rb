require 'kaprekar'

RSpec.describe Kaprekar do
  describe '#largest_digit' do
    it 'returns the largest digit in 1234' do
      expect(Kaprekar.new(1234).largest_digit).to eq(4)
    end
  end
end
