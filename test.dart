void main() {
  Map<String, double> prices = {
    'Tesco Finest Yogurt': 0.90,
    'Robinson\'s orange squash': 2.00,
    'Tesco Finest Macaroni Cheese': 4.25,
    'Doritos Cool Original': 1.20,
    'Milk': 1.20,
  };
  priceRise(prices);
  print('After price rises: $prices');
}

void priceRise(Map<String, double> productPrices) {
  if (productPrices.containsKey('Milk')) {
    print('Price of milk is £${productPrices['Milk']}');
  }
  productPrices['Milk'] = productPrices['Milk']! + 0.20;
}
