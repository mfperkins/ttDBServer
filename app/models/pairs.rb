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

  def first(key)
    error_msg = "Sorry, we don't have that key-value pair stored"
    @all_pairs[key] || error_msg
  end

  private

  attr_reader :all_pairs


end
