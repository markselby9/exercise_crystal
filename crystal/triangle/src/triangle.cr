# Please implement your solution to triangle in this file
class Triangle
	@sides = [] of Int32

	def initialize(sides : Array)
	    @sides = sides.sort
	end

	def is_legal?
		over_zero = @sides.map {|t| t>0}
		over_zero.all? && @sides[0]+@sides[1]>@sides[2]
	end

	def scalene?
		is_legal? && @sides[0] != @sides[1] && @sides[1] != @sides[2]
	end

	def equilateral?
		is_legal? && @sides[0] == @sides[1] && @sides[1] == @sides[2]
	end

	def isosceles?
		equilateral? || (is_legal? && !scalene?)
	end
end

puts Triangle.new([2,3,4]).scalene?