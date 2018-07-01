# Please implement your solution to bracket-push in this file
module Brackets
	extend self
	def are_valid? (consequence : String)
		array = consequence.gsub(/[^\[\]\(\)\{\}]/, "").chars
		stack = [] of Char
		flag = true
		array.each do |c|
			begin
				case c
				when '}'
					flag = false if stack.pop != '{'
				when ']'
					flag = false if stack.pop != '['
				when ')'
					flag = false if stack.pop != '('
				else
					stack.push c
				end
			rescue ex : Exception
				flag = false
				break
			end
		end
		return flag && stack.size == 0
	end
end

puts Brackets.are_valid? "[][]123123][][()"