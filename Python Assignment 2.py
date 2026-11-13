Python 3.15.2 (tags/v3.15.2:5e58eaa, Oct 25 2026, 17:27:03) [MSC v.1951 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.
# ============================================================
#                 PYTHON FUNDAMENTALS
#                     ASSIGNMENT
# ============================================================


# ============================================================
# 1. LIST OPERATIONS
# ============================================================

# 1.1 List Creation

age_list = [24, 25, 26, 27, 28]

name_list = ["Anu", "Ammu", "Ravi", "John", "Meera"]

print("\n========== LIST CREATION ==========")
print("Age List:", age_list)
print("Name List:", name_list)


# 1.2 List Modifications

print("\n========== LIST MODIFICATIONS ==========")

# Append
name_list.append("Yazhini")
print("After Append:", name_list)

# Insert
age_list.insert(2, 30)
print("After Insert:", age_list)

# Remove
name_list.remove("Yazhini")
print("After Remove:", name_list)

# Pop
age_list.pop()
print("After Pop:", age_list)

# Extend
age_list.extend([29, 30, 26])
print("After Extend:", age_list)

# Sort in descending order
age_list.sort(reverse=True)
print("Descending Order:", age_list)

# Maximum, Minimum and Sum
print("Maximum Age:", max(age_list))
print("Minimum Age:", min(age_list))
print("Sum of Ages:", sum(age_list))


# 1.3 Accessing List Elements

print("\n========== ACCESSING LIST ELEMENTS ==========")

print("First Element:", name_list[0])
print("Last Element:", name_list[-1])
print("Elements from Index 2 to 4:", name_list[2:5])
print("Reverse Order:", name_list[::-1])


# ============================================================
# 2. DICTIONARY OPERATIONS
# ============================================================

print("\n========== DICTIONARY OPERATIONS ==========")

# 2.1 Dictionary Creation

student_marks = {
    "Anu": 75,
    "Ammu": 85,
    "Ravi": 90,
    "John": 70,
    "Meera": 95
}

print("Student Marks:", student_marks)


# 2.2 Dictionary Access

print("Anu's Mark:", student_marks["Anu"])


# 2.3 Adding a Student

student_marks["Janani"] = 80
print("After Adding Janani:", student_marks)


# 2.4 Updating Marks

student_marks["Anu"] = 82
print("After Updating Anu's Mark:", student_marks)


# 2.5 Dictionary Methods

print("Dictionary Keys:", student_marks.keys())
print("Dictionary Values:", student_marks.values())
print("Dictionary Items:", student_marks.items())


# ============================================================
# 3. SET OPERATIONS
# ============================================================

print("\n========== SET OPERATIONS ==========")

# 3.1 Set Creation

my_set = {'a', 'e', 'i', 'o', 'u', 'a', 'a', 'i'}

print("Original Set:", my_set)


# 3.2 Modifying Set Elements

try:
    my_set[4] = 's'

except TypeError as error:
    print("Error:", error)
    print("Explanation: Sets do not support indexing or item assignment.")


# 3.3 Creating Two Sets

set1 = {1, 3, 5, 7, 9}
set2 = {2, 3, 5, 8, 10}

print("Set 1:", set1)
print("Set 2:", set2)


# 3.4 Union and Intersection

... print("Union:", set1.union(set2))
... print("Intersection:", set1.intersection(set2))
... 
... 
... # ============================================================
... # 4. OPERATORS AND CONDITIONAL STATEMENTS
... # ============================================================
... 
... print("\n========== PERFORMANCE CATEGORY PROGRAM ==========")
... 
... # 4.1 User Input
... 
... score = int(input("Enter your score (0 to 10): "))
... 
... 
... # 4.2 Conditional Statements
... 
... if score < 0 or score > 10:
... 
...     print("Invalid Score!")
...     print("Please enter a score between 0 and 10.")
... 
... elif score > 7:
... 
...     print("Performance Category: Above Average")
...     print("Excellent performance! Keep up the good work.")
... 
... elif score >= 4:
... 
...     print("Performance Category: Average")
...     print("Good effort! Keep practicing, there is room for improvement.")
... 
... else:
... 
...     print("Performance Category: Below Average")
...     print("Need to improve your performance.")
...     print("Consistent practice will lead to better results.")
... 
... 
