def display_heading():
    print("======================================")
    print("        Line Item Calculator")
    print("======================================\n")

def get_price():
    while True:
        try:
            price = float(input("Enter price: "))
            if price < 0:
                print("Price cannot be negative. Try again.")
            else:
                return price
        except ValueError:
            print("Invalid price format. Please enter a valid number.")

def get_quantity():
    while True:
        try:
            quantity = int(input("Enter quantity: "))
            if quantity < 0:
                print("Quantity cannot be negative. Try again.")
            else:
                return quantity
        except ValueError:
            print("Invalid quantity format. Please enter a whole number.")

def main():
    display_heading()
    while True:
        price = get_price()
        quantity = get_quantity()
        total = price * quantity

        print(f"\nTotal: ${total:,.2f}\n")

        again = input("Enter another line item? (y/n): ").strip().lower()
        while again not in ("y", "n"):
            again = input("Please enter 'y' or 'n': ").strip().lower()
        if again == "n":
            print("\nThank you for using the Line Item Calculator!")
            break
        print()

if __name__ == "__main__":
    main()
