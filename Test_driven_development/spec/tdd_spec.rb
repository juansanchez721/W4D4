require "rspec"
require "tdd"

RSpec.describe Array do
    # subject(:test_arr) {Array.new([])}

    describe "#my_uniq" do

        it "should not modify the original array" do
            test_arr = [0, 0, 0, 1]
            test_arr.my_uniq
            expect(test_arr).to eq([0, 0, 0, 1])
       end
        it "should return all elements in an array that only appear once." do
            test_arr = [0, 0, 0, 1]
            test_arr.my_uniq
            expect(test_arr.my_uniq).to eq([0, 1])
        end
    end

    describe "#two_sum" do

        it "should not modify the original array" do
            test_arr = [0, -1, 3, 0, 1, 5, -6, 6]
            test_arr.two_sum
            expect(test_arr).to eq([0, -1, 3, 0, 1, 5, -6, 6])
        end

        it "should return all pairs of an array that sum to 0" do
            test_arr = [0, -1, 3, 0, 1, 5, -6, 6]
            expect(test_arr.two_sum).to eq([[0,3], [1,4], [6,7]])
        end
        
    end

end