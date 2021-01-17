# 1. initialise 
myList = {'age': 20, 'cat':  'Jem', 'kitten': 'Beans', 'fruit': 'Peach'}

# 2. get value for a given key - cat
print(myList['cat'])

# 3. add a new element
myList['colour'] = 'Purple'

# 4. remove an element
del myList['age']

# 5. modify value of an existing element
myList['colour'] = 'Yellow'

# 6. search for the existence of a key
print('cat' in myList)
print('dog' in myList)

print('cat' in myList.keys())
print('dog' in myList.keys())

# 7. search for the existence of a value
print('Jem' in myList.values())
print('Maryam' in myList.values())

# 8. print key-value pair through foo
def foo(k, v):
  print(k, v)

for key, value in myList.items():
  foo(key,value)
