class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(attributes)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def kind  #instance method

  end

  class TriangleError < StandardError
  end

end
