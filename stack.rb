class Stack
	attr_accessor :stack 
	def initialize
		@stack = []
		@top_index = -1
	end

	def push(num)
		@stack << num
		@top_index=@top_index+1
	end

	def pop 
		return "stack is empty" if @top_index < 0 
		element = @stack[@top_index]
		@top_index=@top_index-1
		element	
	end

	def max
		@stack.max
	end
end


class Extras < Stack

	def mean
		stack.inject(&:+)/stack.size
	end
end
