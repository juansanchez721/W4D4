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
    results
end


def my_transpose
    return_matrix = Array.new(3) {Array.new}

    (0...self.length).each do |c|
        self.each do |row|
            return_matrix[c] << row[c] 
        end
    end
    return_matrix
end

def stock_picker
    buy_sell = []
    max_profit = 0 
    self.each_with_index do |ele, i|
        self.each_with_index do |el, j|
            if j > i && (el - ele) > max_profit
                max_profit = el - ele
                buy_sell = [i,j]
            end
        end

    end
    buy_sell
end


end
