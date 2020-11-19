class Array

def my_uniq

    uniq_hash = Hash.new(0)

    self.each {|ele| uniq_hash[ele] += 1}

    uniq_hash.keys
end


# arr = [0,0,0,1,2,2,3]


# p arr.my_uniq

def two_sum
    results = []
    self.each_with_index do |ele, i|
        self.each_with_index do |el, j|
            if j > i && self[i] + self[j] == 0
                results << [i, j]
            end
        end
    end
    []
    results
end

end
