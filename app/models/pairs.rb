class Pairs

  def initialize(hash=Hash)
    @all_pairs = hash.new
  end

  def get_all_pairs
    all_pairs
  end

  def create(key,value)
    @all_pairs[key] = value
  end

  private

  attr_reader :all_pairs


end
