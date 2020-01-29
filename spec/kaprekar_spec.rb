require 'kaprekar'

RSpec.describe Kaprekar do
  describe 'steps_to_kaprekar' do
    it "returns 0, if it receives kaprekar's constant" do
      expect(Kaprekar.steps_to_kaprekar(6174)).to eq(0)
    end

    it 'returns 2, if it receives 6589' do
      expect(Kaprekar.steps_to_kaprekar(6589)).to eq(2)
    end

    it 'returns 5, if it receives 5455' do
      expect(Kaprekar.steps_to_kaprekar(5455)).to eq(5)
    end

    it 'raises an exception if number is not 4 digits' do
      expect{ Kaprekar.steps_to_kaprekar(545) }.to raise_exception("Input not long enough")
    end
  end
end
