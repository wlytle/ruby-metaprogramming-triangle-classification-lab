class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1, @side_2, @side_3 = side_1, side_2, side_3
    self.check_validity
  end

  def check_validity
    if @side_1 == 0 || @side_2 == 0 || @side_3 == 0
      raise TriangleError
    elsif @side_1 + @side_2 <= @side_3 || @side_1 + @side_3 <= @side_2 || @side_3 + @side_2 <= @side_1
      raise TriangleError
    end
  end

  def kind
    if side_1 == side_2 && side_2 == side_3
      :equilateral
    elsif side_1 == side_2 || side_2 == side_3 || side_1 == side_3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    def not_a_triangle
      "Yo Dawg this is NOT a traingle!"
    end
  end
end
