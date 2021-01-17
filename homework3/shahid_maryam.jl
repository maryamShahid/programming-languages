# 1. Nested subprogram definitions
println("1. Nested subprogram definitions")

function outside()
  # inside is a nested subprogram 
  function inside()
    number = 2
    println("number inside nested function: ", number)
  end
  inside()
  number += 1
  println("number outside: ", number)
end
outside()

#------------------------------------------------------------
# 2. Scope of local variables
println("\n2. Scope of local variables")

name = "-no name-" # global variable
function nameFunc()
  name = "maryam" # new local variable
  println(name)
  name = "maryam shahid" # changing value of existing local
  println(name)
end

nameFunc() # prints local value of name
println(name) # prints global value of name

module nameMod
  name = "jem" # new local variable
  println(name)
end

println(name) # prints global value of name
println(nameMod.name) # allows access to local variable of module nameMod

#------------------------------------------------------------
# 3. Parameter passing methods
println("\n3. Parameter passing methods")

function paraPass(a, b)
  a = a + b
  b = a - b
  println("a = ", a ," b = ", b) # values of parameters inside function
end

a = 10
b = 20
paraPass(a,b)

println("a = ", a ," b = ", b) # values of parameters outside function remain the same

#------------------------------------------------------------
# 4. Keyword and default parameters
println("\n4. Keyword and default parameters")

# default parameter - department
function student1(name, department = "CS")
  println("bilkent student: ", name, ", ", department)
end

# positional binding
student1("maryam")
student1("mert", "PHY")

# keyword parameters - name, department
function student2(; name, department)
  println("bilkent student: ", name, ", ", department)
end

# two keyword parameters
student2(name = "shamin", department = "EE")
# two keyword parameters - random order
student2(department = "CS", name = "hammad")

# default and keyword parameter - name: default, department, uni: keyword
function student3(name, ; department, university)
  println(name, ", ", department, ", ", university)
end

student3("maryam", department = "CS", university = "bilkent")
student3("shamin", university = "fast", department = "EE")

#------------------------------------------------------------
# 5. Closures
println("\n5. Closures")

# closure is the anonymous function returned by addNumber
function addNumber(a) 
  function(b) 
    return a + b
  end
end

# add20 and add3 are closures
add20 = addNumber(20);
add3 = addNumber(3);

println("add 10 to 20: ", add20(10))
println("add 3 to 30: ", add3(30))
