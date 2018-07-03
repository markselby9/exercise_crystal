# Please implement your solution to anagram in this file
module Anagram
	def self.find (word, options)
		chars = word.downcase.chars.sort
		options.select! {|t| t.downcase.chars.sort == chars && t.downcase != word.downcase}
		options.uniq
	end
end