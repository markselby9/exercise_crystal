# Please implement your solution to difference-of-squares in this file
class Squares
	def self.square_of_sum (n : Int32)
		(1..n).to_a.sum ** 2
	end

	def self.sum_of_squares (n : Int32)
		(1..n).to_a.map{|t| t**2}.sum
	end

	def self.difference_of_squares (n : Int32)
		(square_of_sum(n) - sum_of_squares(n)).abs
	end
end

puts Squares.square_of_sum(5)
puts Squares.sum_of_squares(5)
puts Squares.difference_of_squares(5)