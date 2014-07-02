require 'inject'

describe 'my_inject' do	

	let(:arr) { [1,2,3,4] }

	it 'returns 10 when given [1,2,3,4].my_inject {|accum, num| accum + num}' do 

		expect(arr.my_inject {|accum, num| accum + num}).to eq 10
		
	end

	it 'returns 24 when given [1,2,3,4].my_inject {|accum, num| accum * num}' do 

		expect(arr.my_inject {|accum, num| accum * num}).to eq 24
		
	end

	it 'returns when given [2,3,4,5] with {|accum, num| accum * num}' do
		expect([2,3,4,5].my_inject {|accum, num| accum * num}).to eq 120
	end

	it 'returns 4 for [2,5].my_inject {|accum, num| accum + accum }' do
		expect([2,5].my_inject{|accum, element| accum + accum }).to eq 4
	end

	it 'returns 3 called on [1] with 2 and x + y as a block' do
		expect([1].my_inject(2) {|accumulator, element| accumulator + element}).to eq 3
	end

	it 'returns 6 called on [2] with 3 and x * y as a block' do
		expect([2].my_inject(3) {|accumulator, element| accumulator * element}).to eq 6
	end

	it 'returns 5 called on [2,3] with x + y as a block' do
		expect([2,3].my_inject {|accumulator, element| accumulator + element}).to eq 5
	end

	it 'returns 2 called on [2] with x * y as a block' do
		expect([2].my_inject {|accum, ele| accum * ele}).to eq 2
	end

	it 'returns 2 called on [1] with 2 and x * y as a block' do
		expect([1].my_inject(2) {|accumulator, element| accumulator * element}).to eq 2
	end

	it 'returns 2 called on [2, 3] with no arg and x * y as a block' do
		expect([2,3].my_inject {|accumulator, element| accumulator * element}).to eq 6
	end
	
	it 'returns 6 called on [2, 3] with 1 and x + y as a block' do
		expect([2,3].my_inject(1) {|accumulator, element| accumulator + element}).to eq 6
	end

	it 'sums all elements of array' do
		expect([1,2,3,10].my_inject{|accumulator,el| accumulator + el}).to eq 16
	end

	it 'subtracts all elements of array via yield approach' do
		expect([1,2,3].my_inject{|accumulator,el| accumulator - el}).to eq -4
	end	

	it 'subtracts elements of array with starting value of 5' do
		expect([1,2,3,4].my_inject(5){|accumulator,el| accumulator - el}).to eq -5
	end

	it 'multiplies all elements of array' do
		expect([1,2,3].my_inject{|accumulator,el| accumulator * el}).to eq 6
	end

	it 'multiplies all elements of array starting with 5' do
		expect([1,2,3].my_inject(6){|accumulator,el| accumulator * el}).to eq 36
	end

	it 'multiplies all elements of array starting with 5 (yield approach)' do
		expect([1,2,3].my_inject(6){|accumulator,el| accumulator * el}).to eq 36
	end

	it 'no block raises error' do
		expect{arr.my_inject}.to raise_error
	end

end

