def is_multiple_of_3_or_5?(current_number)
    return (current_number % 3 == 0 || current_number % 5 == 0)
end

def sum_of_3_or_5_multiples(final_number)
    final_sum = 0
    return "Error" if !(final_number.is_a? Integer) || final_number < 0
    (1...final_number).each { |i| final_sum += i if is_multiple_of_3_or_5?(i) }
    return final_sum
end