fn main() {
  let mut first = 1; 
  while first < 10 { // pretest
    println!("first: {}", first);
    first *= 2 ;
  }

  let mut count = 10;
  while count > 1 {
    if count == 5 {
      break; // break
    }
    println!("count: {}", count);
    count -= 1;
  }

  let mut check = 5;
  while check > 0 {
  check -= 1;
  if check == 2 {
    continue; // continue
  }
  println!("check: {}", check);
  }

}