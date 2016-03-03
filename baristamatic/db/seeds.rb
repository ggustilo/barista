# Drinks

coffee = Drink.create(name: "Coffee")
decaf = Drink.create(name: "Decaf Coffee")
latte = Drink.create(name: "Caffe Latte")
americano = Drink.create(name: "Caffe Americano")
mocha = Drink.create(name: "Caffe Mocha")
cappuccino = Drink.create(name: "Cappuccino")

# Ingredients

coffee = Ingredient.create(name: "Coffee", cost: 0.75, units: 10)
decaf = Ingredient.create(name: "Decaf Coffee", cost: 0.75, units: 10)
sugar = Ingredient.create(name: "Sugar", cost: 0.25, units: 10)
cream = Ingredient.create(name: "Cream", cost: 0.25, units: 10)
s_milk = Ingredient.create(name: "Steamed Milk", cost: 0.35, units: 10)
f_milk = Ingredient.create(name: "Foamed Milk", cost: 0.35, units: 10)
espresso = Ingredient.create(name: "Espresso", cost: 1.10, units: 10)
cocoa = Ingredient.create(name: "Cocoa", cost: 0.90, units: 10)
w_cream = Ingredient.create(name: "Whipped Cream", cost: 1.00, units: 10)

# Drink Ingredients

# for coffee

DrinkIngredient.create(drink_id: coffee.id, ingredient_id: coffee.id, units_needed: 3)
DrinkIngredient.create(drink_id: coffee.id, ingredient_id: sugar.id, units_needed: 1)
DrinkIngredient.create(drink_id: coffee.id, ingredient_id: cream.id, units_needed: 1)

# for decaf coffee

DrinkIngredient.create(drink_id: decaf.id, ingredient_id: decaf.id, units_needed: 3)
DrinkIngredient.create(drink_id: decaf.id, ingredient_id: sugar.id, units_needed: 1)
DrinkIngredient.create(drink_id: decaf.id, ingredient_id: cream.id, units_needed: 1)

# for caffe latte

DrinkIngredient.create(drink_id: latte.id, ingredient_id: espresso.id, units_needed: 2)
DrinkIngredient.create(drink_id: latte.id, ingredient_id: s_milk.id, units_needed: 1)

# for caffe americano

DrinkIngredient.create(drink_id: americano.id, ingredient_id: espresso.id, units_needed: 3)

# for caffe mocha

DrinkIngredient.create(drink_id: mocha.id, ingredient_id: espresso.id, units_needed: 1)
DrinkIngredient.create(drink_id: mocha.id, ingredient_id: cocoa.id, units_needed: 1)
DrinkIngredient.create(drink_id: mocha.id, ingredient_id: s_milk.id, units_needed: 1)
DrinkIngredient.create(drink_id: mocha.id, ingredient_id: w_cream.id, units_needed: 1)

# for cappuccino

DrinkIngredient.create(drink_id: cappuccino.id, ingredient_id: espresso.id, units_needed: 2)
DrinkIngredient.create(drink_id: cappuccino.id, ingredient_id: s_milk.id, units_needed: 1)
DrinkIngredient.create(drink_id: cappuccino.id, ingredient_id: f_milk.id, units_needed: 1)
