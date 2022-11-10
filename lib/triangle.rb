class Triangle
  # write code here
  def initialize (side1, side2, side3)
    if side1 && side2 && side3 > 0
      @side1 = side1
      @side2 = side2
      @side3 = side3
    else
      raise TriangleError
    end
  end

  def kind
    if @side1 + @side2 <= @side3 || @side1 + @side3 <= @side2 || @side2 + @side3 <= @side1
      raise TriangleError
      else
        if @side1 == @side2 && @side2 == @side3
          :equilateral
        elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
          :scalene
        else
          :isosceles
        end
      end
  end

  class TriangleError < StandardError
  
  end
end