$first = 1;
while ($first < 10) {  // pretest using while 
  echo("first: $first <br>");
  $first = $first * 2;  
}
  
$second = 1;
for (; $second < 10; ) { // pretest using for
  echo("second: $second <br>");
  $second = $second * 2;
}

$third = 10;
do {
  echo("third: $third <br>");
  $third = $third - 4;
} while ($third > 1); // posttest

$count = 10;
while ($count > 0) {
  if ($count == 5) break;   // break to exit the loop
  print("count: $count <br>");
  $count--;
}

$check = 0;
while ($check < 5) {
  $check++;
  if ($check == 2) continue; // continue to skip current iteration
  print("check: $check <br>");
}
