# 1. initialise
myArray = {'name' => 'Maryam', 'cat' => 'Jem', 'kitten' => 'Beans', 'fruit' => 'Peach'}  

# 2. get value for a given key - cat
puts myArray['name']

# 3. add a new element
myArray['colour'] = 'Blue'

# 4. remove an element
myArray.delete('name')

# 5. modify value of an existing element
myArray['colour'] = 'Yellow'

# 6. search for the existence of a key
puts myArray.key?('cat') #prints true
puts myArray.key?('dog') #prints false

# 7. search for the existence of a value
puts myArray.value?('Jem')    #prints true
puts myArray.value?('Maryam') #prints false

# 8. print key-value pair through foo
def foo(key, value) 
    puts "#{key}: #{value}"
end

myArray.each{|key, value| foo(key, value)}
