#Have the function PalindromeTwo(str) take the str parameter being passed and return the string true if the parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. The parameter entered may have punctuation and symbols but they should not affect whether the string is in fact a palindrome. For example: "Anne, I vote more cars race Rome-to-Vienna" should return true. 

def palindrome_two(str)

    letters_only = str.downcase.scan(/[a-z]/).join
	letters_only == letters_only.reverse ? "true" : "false"
  
end