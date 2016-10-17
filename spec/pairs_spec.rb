require './app/models/pairs'

describe Pairs do

  subject(:pairs) {described_class.new}

  describe 'on initialize it ...' do
    it 'should have an empty hash' do
      expect(subject.get_all_pairs).to be_empty
      expect(subject.get_all_pairs).to be_kind_of(Hash)
    end
  end

  describe 'the create method' do
    it 'should add key-value pairs to the all_pairs hash' do
      subject.create("myDog","Beagle")
      expect(subject.get_all_pairs).to eq({"myDog" => "Beagle"})
    end
  end

  describe 'the first method' do
    it 'should retrieve the value from the all_pairs hash given a string' do
      subject.create("myDog","Beagle")
      expect(subject.first("myDog")).to eq("Beagle")
    end
  end

end
