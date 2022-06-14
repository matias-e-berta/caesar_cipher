def caesar_cipher string, shift

splitted_string = string.split("")

ceasar_string = splitted_string.map do |letter|
    
    #Prevents shifted value going out of range
    shifted = letter.ord+(shift%26)

    #Range for /[A-Za-z]/ cases
    min = letter.ord >= 97? 97:65
    max = min+25

    if letter.match?(/[A-Za-z]/) 
        #No wrap
        if  shifted.between? min,max
            letter = shifted.chr
        #Wrap z...a
        elsif shifted>max
            letter = ((shifted%max)+min-1).chr
        end    
    #any /[^A-Za-z]/ case
    else
        letter
    end 
end
ceasar_string.join("")
end

