Python 3.15.2 (tags/v3.15.2:5e58eaa, Oct 25 2026, 17:27:03) [MSC v.1951 64 bit (AMD64)] on win32
Enter "help" below or click "Help" above for more information.
>>> # PROJECT: SURVEY FEEDBACK ANALYZER
... # Python Fundamentals Project
... 
... # STEP 1: PRELOADED FEEDBACKS
... feedback_data = {
...     "S_No": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
...     "Name": ["Ravi", "Meera", "Sam", "Anu", "Raj", "Divya", "Arjun", "Kiran", "Leela", "Nisha"],
...     "Feedback": [
...         "   Very GOOD Service!!!!,",
...         "poor support,   not happy   ",
...         "GREAT experience! Will come again.",
...         "okay   okay...",
...         "not   BAD!",
...         "Excellent care, excellent staff!!",
...         "good food and good ambience!",
...         "Poor response and poor handling of issue",
...         "Satisfied. But could be better.",
...         "Good support... quick service."
...     ],
...     "Rating": [5, 2, 5, 3, 2, 5, 4, 1, 3, 4]
... }
... 
... # STEP 2: ADD MORE FEEDBACKS
... print("SURVEY FEEDBACK ANALYZER")
... print("Existing feedbacks:", len(feedback_data["S_No"]))
... 
... more_feedbacks = int(input("How many more feedbacks do you want to add? "))
... 
... for i in range(more_feedbacks):
...     print("\nEnter details for feedback", i + 1)
...     name = input("Enter name: ")
...     feedback = input("Enter written feedback: ")
...     rating = int(input("Enter rating (1-5): "))
... 
...     while rating < 1 or rating > 5:
...         print("Invalid rating. Please enter a rating from 1 to 5.")
        rating = int(input("Enter rating (1-5): "))

    new_s_no = len(feedback_data["S_No"]) + 1
    feedback_data["S_No"].append(new_s_no)
    feedback_data["Name"].append(name)
    feedback_data["Feedback"].append(feedback)
    feedback_data["Rating"].append(rating)

# STEP 3: TEXT CLEANING
cleaned_feedbacks = []

for feedback in feedback_data["Feedback"]:
    cleaned_text = feedback
    for punctuation in [".", ",", "!", "?"]:
        cleaned_text = cleaned_text.replace(punctuation, "")
    cleaned_text = " ".join(cleaned_text.split()).lower()
    cleaned_feedbacks.append(cleaned_text)

feedback_data["Feedback"] = cleaned_feedbacks

# STEP 4: WORD COUNT INSIGHTS
def count_word_in_feedbacks(word):
    count = 0
    for feedback in feedback_data["Feedback"]:
        if word.lower() in feedback.split():
            count += 1
    return count

print("\nWORD COUNT INSIGHTS")
print("Feedbacks containing 'good':", count_word_in_feedbacks("good"))
print("Feedbacks containing 'poor':", count_word_in_feedbacks("poor"))
print("Feedbacks containing 'excellent':", count_word_in_feedbacks("excellent"))

# STEP 5: FINAL SUMMARY AND INSIGHTS
print("\nFINAL CLEANED FEEDBACK DATA")
print(feedback_data)

average_rating = sum(feedback_data["Rating"]) / len(feedback_data["Rating"])
print("\nAverage rating:", round(average_rating, 2))

longest_feedback = max(feedback_data["Feedback"], key=lambda text: len(text.split()))
print("\nLongest feedback:", longest_feedback)
print("Word count:", len(longest_feedback.split()))

unique_words = set()
for feedback in feedback_data["Feedback"]:
    for word in feedback.split():
        unique_words.add(word)

print("\nUnique words used across all feedbacks:")
print(sorted(unique_words))

# OPTIONAL: SORT FEEDBACKS BY RATING (HIGHEST TO LOWEST)
sorted_feedbacks = sorted(
    zip(feedback_data["Name"], feedback_data["Feedback"], feedback_data["Rating"]),
    key=lambda item: item[2],
    reverse=True
)

print("\nFEEDBACKS SORTED BY RATING")
for name, feedback, rating in sorted_feedbacks:
    print(name, "|", feedback, "| Rating:", rating)

