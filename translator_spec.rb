require 'rspec'
require './translator.rb'

describe Translator do
  let(:subject) { described_class.new }

  describe '#translate' do
    it 'encodes a word correctly' do
      expect(subject.translate('hello')).to eq 'uryyb'
    end

    it 'preserves the spaces in a sentence' do
      expect(subject.translate('fraq hf gur pbqr lbh hfrq gb qrpbqr guvf zrffntr')).to eq 'send us the code you used to decode this message'
    end

    it 'decodes a word correctly' do
      expect(subject.translate('uryyb')).to eq 'hello'
    end

    it 'preserves upper and lower case characters' do
      expect(subject.translate('uRyyYYbBbBb')).to eq 'hEllLLoOoOo'
    end
  end
end
