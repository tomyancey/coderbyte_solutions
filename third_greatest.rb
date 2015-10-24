def third_greatest(str_arr)

	str_arr.sort_by {|x| x.length }[-3]

end

puts third_greatest([ "coder","byte","code"])
puts third_greatest(["hello", "world", "before", "all"])