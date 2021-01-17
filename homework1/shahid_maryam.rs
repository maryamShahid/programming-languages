use std::collections::HashMap;

fn main() {
    // 1. initialise
    let mut my_array = HashMap::new();
    
    my_array.insert("cat", "Jem");
    my_array.insert("kitten", "Beans");
    my_array.insert("name", "Maryam");
    
    // 2. get the value for a given key - name
    println!("{}", my_array["name"]);
    
    // 3. add a new element
    my_array.insert("colour", "Yellow");
    
    // 4. remove an element
    my_array.remove("name");
    
    // 5. modify the value of an existing element
    my_array.insert("colour", "Black");
    
    // 6. search for existence of a key
    println!("{}", my_array.contains_key("age"));
    println!("{}", my_array.contains_key("colour"));
    
    // 7. search for the existence of a value
    let does_contain = my_array.values().any(|&val| val == "Jem");
    println!("{}", does_contain);
    
    let does_contain = my_array.values().any(|&val| val == "Maryam");
    println!("{}", does_contain);
    
    // 8. print key-value pairs through foo
    for (key, value) in &my_array {
        foo(key, value);
    }
}

fn foo(key: &str, value: &str) {
    println!("{}: \"{}\"", key, value);
}