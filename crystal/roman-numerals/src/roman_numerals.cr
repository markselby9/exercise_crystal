# Please implement your solution to roman-numerals in this file
struct Int

	NUMERALS = {
		"M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90,
		"L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1,
	}

	def to_roman
		number = self
		String.build do |result|
			NUMERALS.each do |key, value|
				if number >= value
					count = number / value
					number -= count * value
					result << (key * count)
				end
			end
		end
	end
end
