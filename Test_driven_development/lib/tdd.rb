class Array

def my_uniq

    uniq_hash = Hash.new(0)

    self.each {|ele| uniq_hash[ele] += 1}

    uniq_hash.keys
end

end

arr = [0,0,0,1,2,2,3]


p arr.my_uniq

