# arr = [17, 3, 6, 9, 15, 8, 6, 1, 10]
arr = [22, 12, 6, 4, 9, 8, 25, 3, 10]
hash = {}

arr.each do |i|
    arr.each do |j|
        hash[[arr.rindex(i), arr.rindex(j)]] = j - i if arr.rindex(i) < arr.rindex(j)
    end
end

print hash.max_by{|k,v| v}