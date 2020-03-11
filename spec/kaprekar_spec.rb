require 'kaprekar'

RSpec.describe Kaprekar do
  describe 'Kaprekar steps_to_kaprekar' do
    context 'Kaprekar' do
      it 'returns 0' do
        expect(Kaprekar.steps_to_kaprekar(6174)).to eq(0)
      end
    end

    context '6589' do
      it 'returns 2' do
        expect(Kaprekar.steps_to_kaprekar(6589)).to eq(2)
      end
    end

    context '5455' do
      it 'returns 5' do
        expect(Kaprekar.steps_to_kaprekar(5455)).to eq(5)
      end
    end
  end

  describe 'Kaprekar sort_digits' do
    context 'Kaprekar' do
      context 'ascending' do
        it 'returns 1467' do
          expect(Kaprekar.sort_digits(6174, true)).to eq(1467)
        end
      end
      context 'descending' do
        it 'returns 7641' do
          expect(Kaprekar.sort_digits(6174, false)).to eq(7641)
        end
      end

    end
  end
end
