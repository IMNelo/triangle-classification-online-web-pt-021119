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

  def kind(triangle_type)
    self.attributes = triangle_type
    if triangle_type.class != Triangle
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else
      triangle_type.attributes = self
    end
  end

  class TriangleError < StandardError
    def message
      "My custom message here"
    end
  end

end
