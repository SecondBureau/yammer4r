class Yammer::GroupList < Array
  
  attr_reader :ids
  
  def initialize(a, c)
    super(a)
    @client = c
    @ids = a.map {|m| m.id}.sort
  end
  
  def first
    self[0]
  end
  
  def last
    self[self.size - 1]
  end
  
end