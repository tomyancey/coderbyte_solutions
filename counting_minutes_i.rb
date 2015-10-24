#Have the function CountingMinutesI(str) take the str parameter being passed which will be two times (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number of minutes between the two times. The time will be in a 12 hour clock format. For example: if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320. 

def counting_minutesI(str)

  match = str.scan(/(\d+):(\d+)([ap]m)/)
  t1, t2 = match[0], match[1]
  
  t1[0].to_i == 12 ? t1h = 0 : t1h = t1[0].to_i * 60
  t2[0].to_i == 12 ? t2h = 0 : t2h = t2[0].to_i * 60
  
  t1m = t1[1].to_i
  t2m = t2[1].to_i
  
  t1[2].match(/am/) ? t1ampm = 0 : t1ampm = 720
  t2[2].match(/am/) ? t2ampm = 0 : t2ampm = 720
  
  time1 = t1h + t1m + t1ampm
  time2 = t2h + t2m + t2ampm
  
  return 0 if time1 == time2
  time2 > time1 ? time2 - time1 : 1440 - (time1 - time2)
  
end
