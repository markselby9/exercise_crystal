# Please implement your solution to atbash-cipher in this file
module Atbash
	MAP = ('a'..'z').to_a.zip(('a'..'z').to_a.reverse).to_h

	extend self
	def encode (str : String)
		str = str.downcase.gsub(/[^0-9a-z]/, "")
		String.build do |result|
			str.chars.each_with_index do |t, index|
				result << " " if (index > 0 && index%5==0)
				result << (MAP.has_key?(t)? MAP[t] : t)
			end
		end
	end


	def decode (str : String)
		str = str.downcase.gsub(/[^0-9a-z]/, "")
		String.build do |result|
			str.chars.each_with_index do |t, index|
				result << MAP[t]
				result << " " if (index+1)%5==0
			end
		end
	end
end