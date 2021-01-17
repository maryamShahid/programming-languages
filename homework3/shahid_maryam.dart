void main() {
  var first = 1;
  while (first < 10) {  // pretest using while 
    print("first:  $first");
    first = first * 2;
  }
  
  var i = 1;
  for (; i < 10; ) {       // pretest using for
    print("i:  $i");
    i = i * 2;
  }
  
  var second = 10;
  do {
    print("second: $second");
    second = second - 4;
  } while (second > 1);  // posttest
  
  var count = 10;
  while (count > 0) {
    if (count == 5)
      break;   // break to exit the loop
    print("count: $count");
    count--;
  }

  var check = 5;
  while (check > 0) {
    check--;
    if (check == 2)
      continue;  // continue to skip over the rest of the loop
    print("check: $check");
  }
  
}
