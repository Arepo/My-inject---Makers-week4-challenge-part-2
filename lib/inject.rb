
module Enumerable 
	
	def my_inject(accumulator = nil, &block)
		return accumulator if self.length == 0
		return self.first if !accumulator && self.length == 1
		return yield(accumulator, self.first) if self.length == 1
		return self.drop(1).my_inject(yield(accumulator, self.first), &block) if accumulator
		return self.drop(2).my_inject(yield(self[0], self[1]), &block) 
	end

end