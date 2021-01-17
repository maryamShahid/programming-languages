-- 1. initialise 
myArray = {["name"] = "Maryam", ["cat"] =  "Jem", ["kitten"] = "Beans", ["fruit"] = "Peach"}

-- 2. get value for a given key - name
print(myArray["name"])  -- prints Maryam

-- 3. add a new element
myArray["colour"] = "Black"

-- 4. remove an element
myArray["fruit"] = nil

-- 5. modify value of an existing element
myArray["colour"] = "Purple"

-- 6. search for the existence of a key
print(myArray["fruit"] ~= nil)  -- prints false
print(myArray["colour"] ~= nil) -- prints true

-- 7. search for the existence of a value
function checkValue(valueToCheck)
    for key, value in pairs(myArray) do 
        if value == valueToCheck then
          print(valueToCheck, "exists")
      end
    end
end

checkValue("Purple")

-- 8. print key-value pair through foo
function foo(key, value)
   print (key, value)
end

for key,value in pairs(myArray) do 
   foo(key,value)
end
