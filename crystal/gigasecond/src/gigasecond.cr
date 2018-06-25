# Please implement your solution to gigasecond in this file
module Gigasecond
	def self.from(time : Time)
		puts time
		return time + (10**9).seconds
	end
end