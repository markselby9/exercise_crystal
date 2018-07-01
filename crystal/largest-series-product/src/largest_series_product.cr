# Please implement your solution to largest-series-product in this file
class Series
	@array = Array(Int64).new
	def initialize(string : String)
		@array = string.chars.map {|x| Int64.new(x.to_i)}
	end

	def largest_product(length : Int64)
		raise ArgumentError.new("length too long") if length > @array.size
		result = Int64.new(0)
		(0..(@array.size - length)).to_a.each do |start|
			result = [result, @array[start, length].product].max
		end
		result
	end
end

puts Series.new("12345").largest_product(2)