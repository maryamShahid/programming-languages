$first = 1
while $first < 10 do # pretest - conditional do
  puts("first:  #$first")
  $first *= 2 
end

$second = 3
until $second < 1 do  #pretest
  puts("second:  #$second")
  $second -= 1
end

$third = 10
begin  
  puts("third:  #$third")
  $third -= 4 
end while $third > 1 # posttest 

$fourth = 5
begin 
  puts("fourth:  #$fourth")
  $fourth += 2
end until $fourth > 10 # posttest 

$count = 10
while $count > 1 do
  if $count == 5 then
    break
  end
  puts("count:  #$count")
  $count -= 1
end

$check = 5
while $check > 0 do 
  $check -= 1
  if $check == 2 then
    next
  end
  puts("check: #$check")
end

$rest = 6
while $rest >= 3 do 
  $rest -= 1
  if $rest == 2 then
    redo
  end
  puts("rest: #$rest")
end
