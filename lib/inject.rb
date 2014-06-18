require 'debugger'
module Enumerable 

	def my_inject(accumulator = self.first, &block)
		return accumulator if self.length == 1
		block.call(accumulator, self.drop(1).my_inject(&block))
	end

end

	# def define_caller
	# 	self.class
	# end