# Please implement your solution to pangram in this file
class Pangram
	def self.pangram?(str : String)
		str.downcase.gsub(/[^a-z]/, "").chars.uniq.size == 26
		# record = Array.new(26, 0)
		# str.downcase.count do |c|
		# 	value = c.ord - 'a'.ord
		# 	if (value >= 0 && value < 26)
		# 		record[value] += 1
		# 	end
		# end

		# record.count do |number|
		# 	return false if number == 0
		# end
		# return true
	end
end

str = "\"Five quacking Zephyrs jolt my wax bed.\""
puts Pangram.pangram? str