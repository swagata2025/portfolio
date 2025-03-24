# Define the questions and answers
questions = [
    {
        'question': "What is the capital of France?",
        'options': ['A) Berlin', 'B) Madrid', 'C) Paris', 'D) Rome'],
        'answer': 'C'
    },
    {
        'question': "Which programming language is known as 'Python'?",
        'options': ['A) Java', 'B) C++', 'C) Python', 'D) Ruby'],
        'answer': 'C'
    },
    {
        'question': "Who developed the theory of relativity?",
        'options': ['A) Isaac Newton', 'B) Albert Einstein', 'C) Nikola Tesla', 'D) Galileo Galilei'],
        'answer': 'B'
    },
    {
        'question': "What is the largest planet in our solar system?",
        'options': ['A) Earth', 'B) Mars', 'C) Jupiter', 'D) Saturn'],
        'answer': 'C'
    },
    {
        'question': "Which element has the chemical symbol 'O'?",
        'options': ['A) Oxygen', 'B) Gold', 'C) Iron', 'D) Silver'],
        'answer': 'A'
    }
]

# Function to run the quiz
def run_quiz():
    score = 0
    
    # Loop through the questions
    for question in questions:
        print(question['question'])
        for option in question['options']:
            print(option)
        
        # Collect the user's answer with input validation
        while True:
            answer = input("Please enter the letter of your answer: ").upper()
            if answer in ['A', 'B', 'C', 'D']:  # Validating input
                break
            else:
                print("Invalid choice. Please select A, B, C, or D.")
        
        # Check if the answer is correct
        if answer == question['answer']:
            print("Correct!\n")
            score += 1
        else:
            print(f"Wrong! The correct answer was {question['answer']}.\n")
    
    # Display the final score
    print(f"Quiz finished! Your score is {score}/{len(questions)}.")
    
    # Performance message based on the score
    if score == len(questions):
        print("Excellent! You got all the answers right!")
    elif score >= len(questions) / 2:
        print("Good job! You did well.")
    else:
        print("Better luck next time!")
    
# Main function to start the quiz
def main():
    # Welcome message
    print("Welcome to the Python Quiz! Let's test your knowledge.\n")
    run_quiz()
    
    # Thank you message
    print("\nThank you for taking the quiz! We hope you enjoyed it.")

# Run the main function
if __name__ == "__main__":
    main()
