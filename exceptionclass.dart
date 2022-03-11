// Exception Class
void main() {
  try {
    depositMoney(-200);
  } on DepositException {
    print("You cannot enter amount less than 0");
  }
}

class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
}

void depositMoney(int amount) {
  if (amount < 0) {
    throw new DepositException();
  }
}
