# Please implement your solution to sieve in this file
module Primes
	def self.sieve (number : Int32)
		options = (2..number).to_a
		(2..number).to_a.each do |t|
			((t+1)..number).to_a.each do |m|
				options.delete(m) if m % t == 0
			end
		end
		return options
	end
end

puts Primes.sieve(3)