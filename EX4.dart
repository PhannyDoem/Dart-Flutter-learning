void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };
  const order = ['margherita', 'pepperoni'];

  double totalCost = 0.0;
  bool invalidPizza = false;

  for (String pizza in order) {
    if (pizzaPrices.containsKey(pizza)) {
      totalCost += pizzaPrices[pizza] ?? 0.0; 
    } else {
      print('$pizza pizza is not on the menu');
      invalidPizza = true;
      break;
    }
  }

  if (!invalidPizza) {
    print('Total: \$${totalCost.toStringAsFixed(2)}');
  }
}
