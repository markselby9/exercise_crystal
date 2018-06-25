class Hamming
	def self.compute(str1, str2)
		length = str1.size
		str1.chars.zip(str2.chars).count {|chars| chars[0] != chars[1]}
	end
end

# puts Hamming.compute("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT")
