# Please implement your solution to raindrops in this file
module Raindrops
	extend self
	def drops(number : Int)
		result = String.build do |str|
			str<<"Pling" if number%3 == 0
			str<<"Plang" if number%5 == 0
			str<<"Plong" if number%7 == 0
		end
		return number.to_s if result.empty? 
		result
	end
end

puts Raindrops.drops 1
puts Raindrops.drops 5
puts Raindrops.drops 35
			