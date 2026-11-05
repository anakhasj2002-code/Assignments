# PYTHON ASSIGNMENT 1
# STRINGS AND TUPLES

# 1. STRING CONCATENATION

str1 = "Hello"
name = input("Enter your Name: ")

str3 = str1 + " " + name
print(str3)

str3 = str3 + ", welcome to Python programming"
print(str3)


# 2. STRING SLICING AND INDEXING

print("First character:", str3[0])
print("Last character:", str3[-1])
print("First 5 characters:", str3[:5])
print("Last 11 characters:", str3[-11:])
print("Reverse:", str3[::-1])

start = str3.find("Python")
print("Python word:", str3[start:start+6])


# 3. STRING METHODS

strM = "Python beginner tutorial"

print("Uppercase:", strM.upper())
print("Lowercase:", strM.lower())
print("Capitalize:", strM.capitalize())
print("Count of t:", strM.count('t'))
print("Replace:", strM.replace("Python", "Machine Learning"))


# 4. TUPLES

t1 = (10, 20, 30)
t2 = (40, 50, 60)

t_combine = t1 + t2

print("Combined Tuple:", t_combine)
print("Repeated Tuple:", t_combine * 3)
print("Third Element:", t_combine[2])
print("First Three Elements:", t_combine[:3])
print("Last Three Elements:", t_combine[-3:])
