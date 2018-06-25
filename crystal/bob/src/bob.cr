# Please implement your solution to bob in this file
module Bob
	extend self
	def hey(question : String)
		case question.chars.last
		when '?'
			"Sure."
		when '!'
			"Whoa, chill out!"
		else
			"Whatever."
		end
	end
end