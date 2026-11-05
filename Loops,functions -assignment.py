import random

# Generate a random number between 1 and 10[span_7](start_span)[span_7](end_span)
secret_number = random.randint(1, 10)
attempts = 3  # Maximum number of guesses allowed[span_8](start_span)[span_8](end_span)

while attempts > 0:
    try:
        guess = int(input("Guess the number (between 1 and 10): "))
    except ValueError:
        print("Please enter a valid integer.")
        continue

    # Check if the guess is out of range[span_9](start_span)[span_9](end_span)
    if guess < 1 or guess > 10:
        print("Your guess is out of range. Please guess a number between 1 and 10.")
        continue  # Skip the rest of the loop and ask again[span_10](start_span)[span_10](end_span)

    # Check the user's guess[span_11](start_span)[span_11](end_span)[span_12](start_span)[span_12](end_span)
    if guess < secret_number:
        print("Too low. Try again.")
    elif guess > secret_number:
        print("Too high. Try again.")
    else:
        print("Congratulations! You guessed the correct number.")
        break  # Exit the loop if the guess is correct[span_13](start_span)[span_13](end_span)

    attempts -= 1

else:
    # Executes if the user runs out of attempts without guessing correctly[span_14](start_span)[span_14](end_span)
    print("Better luck next time!")

# Prompt user for input[span_22](start_span)[span_22](end_span)
num = int(input("Enter the number for which you want the multiplication table: "))

# Generate the Multiplication Table using a for loop[span_23](start_span)[span_23](end_span)
for i in range(1, 11):
    result = num * i
    # Display the Multiplication Table in the required format[span_24](start_span)[span_24](end_span)
    print(f"{num} x {i} = {result}")

# Define a function to calculate BMI[span_30](start_span)[span_30](end_span)
def calculate_bmi(weight, height):
    bmi = weight / (height ** 2)
    return bmi

# Prompt the user for their weight (in kg) and height (in meters)[span_31](start_span)[span_31](end_span)
weight_input = float(input("Enter your weight in kg: "))
height_input = float(input("Enter your height in meters: "))

# Use the function to calculate and display the BMI[span_32](start_span)[span_32](end_span)
bmi_value = calculate_bmi(weight_input, height_input)

# Display result formatted to 2 decimal places to match sample output[span_33](start_span)[span_33](end_span)
print(f"Your BMI is: {bmi_value:.2f}")
