void main() {

  // 1. initialise
  var myArray =  {'age': 20, 'cat': 'Jem', 'kitten': 'Beans', 'fruit': 'Peach'};
  
  // 2. get value for a given key - cat
  print(myArray['cat']);  // prints Jem
  
  // 3. add a new element
  myArray['colour'] = 'Black';
  
  // 4. remove an element
  myArray.remove('age');
  
  // 5. modify value of an existing element
  myArray['colour'] = 'Yellow';
  
  // 6. search for the existence of a key
  print(myArray.containsKey('cat'));  // prints true
  print(myArray.containsKey('dog'));  // prints false
  
  // 7. search for the existence of a value 
  print(myArray.containsValue('Jem'));    // prints true
  print(myArray.containsValue('Orange')); // prints false
  
  // 8. print key-value pair through foo
  foo (key, value) {
    print('$key, $value');
  }
  
  myArray.forEach((key, value) => foo(key, value));
  
}