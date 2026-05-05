class BankAccount:
    def __init__(self, owner, balance):
        self.owner = owner
        self.balance = balance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print("Deposited $" + str(amount))
        else:
            print("Invalid deposit amount.")

    def withdraw(self, amount):
        if amount > self.balance:
            print("Insufficient funds.")
        elif amount > 0:
            self.balance -= amount
            print("Withdrew $" + str(amount))
        else:
            print("Invalid withdrawal amount.")

    def get_balance(self):
        print(self.owner + "'s balance: $" + str(self.balance))

account = BankAccount("Wilson", 1000)
account.deposit(500)
account.withdraw(200)
account.withdraw(2000)
account.get_balance()