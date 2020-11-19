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
end