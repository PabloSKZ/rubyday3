def caesar_cipher(string, nb_origin)
    return "Type Error" if !(string.is_a? String) || !(nb_origin.is_a? Integer) || (nb_origin < 0)

    arr_string_origin = string.split('')
    arr_string_modif = []

    arr_string_origin.each do |i|
        char = i
        puts char
        if (char.ord >= 97 && char.ord <= 122) || (char.ord >= 65  && char.ord <= 90)
            nb_modif = char.ord + nb_origin 
        else
            nb_modif = char.ord
        end
        nb_modif = nb_modif - 26 if nb_modif > 90 if char.ord < 91
        nb_modif = nb_modif - 26 if nb_modif > 122

        arr_string_modif << nb_modif.chr
    end
    return arr_string_modif.join('')
end

puts caesar_cipher("Zbrla Bla !", 3)