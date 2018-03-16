require 'pry'
class Triangle
  # write code here
  attr_accessor :type, :one, :two, :three

  def initialize(one, two, three)



    # binding.pry
    @one = one
    @two = two
    @three = three

  end

  def kind
    arguments = [@one, @two, @three]

    test = arguments.any?{|side| side <= 0}

    if @one + @two <= @three || @one + @three <= @two || @two + @three <= @one || test
      raise TriangleError
    end

    if @one == @two && @one == @three && @two == @three
      @type = :equilateral
    elsif @one == @two || @one == @three || @two == @three
      @type = :isosceles
    else
      @type = :scalene
    end

  end

end

  class TriangleError < StandardError
    def message
      "the sum of any two sides of triangles must be greater than
       the third side!"
    end
  end



bob = Triangle.new(2,3,7)

binding.pry
