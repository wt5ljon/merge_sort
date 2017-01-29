require 'spec_helper.rb'

describe "merge_sort" do
	it "returns a sorted array for even number of elements" do
		array = [9, 21, 16, 2, 5, 8, -5, 10, 7, 0]
		expect(merge_sort(array)).to eq [-5, 0, 2, 5, 7, 8, 9, 10, 16, 21]
	end

	it "returns a sorted array for odd number of elements" do
		array = [10, -4, -8, 5, 2, 9, 1, 3, 0]
		expect(merge_sort(array)).to eq [-8, -4, 0, 1, 2, 3, 5, 9, 10]
	end
end

