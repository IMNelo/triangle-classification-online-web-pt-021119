class Triangle

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(equilateral:, isosceles:, scalene:)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  #def initialize(attributes)
  #attributes.each {|key, value| self.send(("#{key}="), value)}
  #end

  def kind  #instance method
  end

  def kind(triangle_type)
  self.partner = triangle_type
  if triangle_type.class != triangle_type
    begin
      raise TriangleError
    rescue TriangleError => error
        puts error.message
    end
  else
    triangle_type.partner = self
  end
end

  class TriangleError < StandardError
  end

end
