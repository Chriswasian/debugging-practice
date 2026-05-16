class BankAccount:
    def __init__(self, owner, balance=0):
        self.owner = owner
        self.balance = balance
        self.transactions = []

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            self.transactions.append(f"+${amount:.2f}")
        else:
            print("Deposit amount must be positive")
    def withdraw(self, amount):
        if amount > self.balance:
            print("Insufficient funds")
        elif amount > 0:
            self.balance -= amount
            self.transactions.append(f"-${amount:.2f}")
        else:
            print("Withdrawal amount must be positive")

    def get_summary(self):
        print(f"Account owner: {self.owner}")
        print(f"Balance: ${self.balance:.2f}")
        print(f"Transactions: {len(self.transactions)}")
        if self.transactions:
            print("History: " + ", ".join(self.transactions))
account = BankAccount("Wilson", 500)
account.deposit(200)
account.withdraw(75)
account.deposit(50)
account.withdraw(1000)
account.get_summary()