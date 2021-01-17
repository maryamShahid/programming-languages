// 1. initialise
$myArray  = array("name" => "Maryam", "cat" => "Jem", "kitten" => "Beans", "fruit" => "Peach");

// 2. get the value for a given key
echo $myArray{'name'};
echo "<br>";

// 3. add a new element
$myArray['color'] = "Purple";

// 4. remove an element
unset($myArray['name']);

// 5. modify the value of an existing element
$myArray['color'] = "Black";

// 6. search for existence of a key
var_dump(array_key_exists('cat', $myArray));
echo "<br>";

var_dump(array_key_exists('dog', $myArray));
echo "<br>";

// 7. search for the existence of a value
var_dump(in_array("Jem", $myArray));
echo "<br>";

var_dump(in_array("James", $myArray));
echo "<br>";

// 8. print key-value pairs through foo
function foo($key, $value) {
  echo $key . " " . $value;
  echo "<br>";
}
  
foreach($myArray as $key => $value) {
  echo foo($key, $value);
}