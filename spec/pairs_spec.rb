require './app/models/pairs'

describe Pairs do

  subject(:pairs) {described_class.new}

  describe 'initialize' do
    it 'should have an empty hash' do
      expect(subject.get_all_pairs).to be_empty
      expect(subject.get_all_pairs).to be_kind_of(Hash)
    end
  end

end
