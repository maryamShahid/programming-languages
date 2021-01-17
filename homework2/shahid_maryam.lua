first = 1
while (first < 10) -- pretest
do         
  print("first:", first)
  first = first * 2
end
  
second = 3
repeat
  print("second:", second)
  second = second - 1
until (second < 1) -- posttest: stops when condition is true
  
count = 10
while (count) 
do
  if (count == 5)
  then
    break -- break to exit the loop
  end
  print("count:", count)
  count = count - 1
end