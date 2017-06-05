# holds a value
# knows it's position

class Square

  attr_reader :name, :value

  def initialize(name)
    @name = name
    @value = value
  end

  def tick
    self.value = 1
  end

  def tack
    self.value = 0
  end

  private

  attr_writer :value

end
