=begin
Have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either returning the string true or false. The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol. So the string to the left would be false. The string will not be empty and will have at least one letter. 
=end

def simple_symbols(str)

    arr = str.downcase.split(//)
    matches = [] 
    
    idx = 0
    while arr.size - 1 > idx 
        matches << arr[idx] if arr[idx].match(/[a-z]/) && arr[idx - 1].match(/\+/) && arr[idx + 1].match(/\+/)
        idx += 1
    end

    letter = str.scan(/[a-zA-Z]/)
    matches.size == letter.size ? "true" : "false"
end
