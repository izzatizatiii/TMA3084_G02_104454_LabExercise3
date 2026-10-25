import 'dart:io';

void main() {
  int smallPrice = 5;
  int mediumPrice = 7;
  int largePrice = 10;
  bool ordering = true;
  int payment=0;

  print("========================================================");
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");
  while (ordering) {
    int price = 0;
    int total;
    
    print("Please enter your pizza size (small, medium, or large)");
    String size = (stdin.readLineSync() ?? '').trim().toLowerCase();

    print("How many pizzas do you want of pizza size?");
    int quantity = int.parse(stdin.readLineSync()!);

    switch (size) {
      case 'small':
        price = smallPrice;
        break;
      case 'medium':
        price = mediumPrice;
        break;
      case 'large':
        price = largePrice;
        break;
      default:
        print("Invalid Size");
    }

    total = price * quantity;
    payment += total;
    print("Your Total  is: \$$total");
    print("Payment : \$$payment");

    print("Do you want to order again? (y/n):");
    var order = stdin.readLineSync();
    ordering = (order == 'y' || order == 'Y');
  }
  print("Thankyou for your order!");
}