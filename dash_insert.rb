#Have the function DashInsert(str) insert dashes ('-') between each two odd numbers in str. For example: if str is 454793 the output should be 4547-9-3. Don't count zero as an odd number. 
def dash_insert(str)

    arr = str.to_s.split(//)
    idx = 0
    
    until arr.size - 1 == idx
        arr[idx] << '-' if arr[idx].match(/[13579]/) && arr[idx + 1].match(/[13579]/)
        idx += 1
    end  
    
    arr.join   
       
end