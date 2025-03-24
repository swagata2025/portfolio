# Function to display a welcome message
def display_welcome_message():
    print("Welcome to the Daily Expense Tracker!\n")
    print("You can log your expenses and view a summary of your spending.\n")

# Function to log an expense
def log_expense(expenses):
    amount = float(input("Enter the expense amount: $"))
    category = input("Enter the expense category (Food, Transport, Entertainment, Other): ").capitalize()
    description = input("Enter a description for the expense: ")

    expense = {
        "amount": amount,
        "category": category,
        "description": description
    }
    expenses.append(expense)

# Function to display the summary of expenses
def display_summary(expenses):
    if not expenses:
        print("No expenses logged yet.\n")
        return

    total_spent = 0
    category_totals = {"Food": 0, "Transport": 0, "Entertainment": 0, "Other": 0}

    for expense in expenses:
        total_spent += expense["amount"]
        category_totals[expense["category"]] += expense["amount"]

    print("\n--- Expense Summary ---")
    print(f"Total spent: ${total_spent:.2f}")
    print("\nAmount spent by category:")
    for category, total in category_totals.items():
        print(f"{category}: ${total:.2f}")

    print("\nAll Expenses:")
    for expense in expenses:
        print(f"${expense['amount']:.2f} | Category: {expense['category']} | Description: {expense['description']}")

# Main function
def main():
    expenses = []

    # Display welcome message
    display_welcome_message()

    # Main loop to log expenses or view the summary
    while True:
        action = input("Would you like to log an expense (L), view the summary (S), or quit (Q)? ").upper()

        if action == "L":
            log_expense(expenses)
        elif action == "S":
            display_summary(expenses)
        elif action == "Q":
            break
        else:
            print("Invalid input. Please enter L, S, or Q.")

    # Thank you message
    print("\nThank you for using the Daily Expense Tracker!")

# Run the program
if __name__ == "__main__":
    main()

