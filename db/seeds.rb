steve = User.create(username: "steve", password: "password", email: "steve@gmail.com")
steve2 = User.create(username: "steve2", password: "password", email: "steve2@gmail.com")
steve3 = User.create(username: "steve3", password: "password", email: "steve3@gmail.com")

recipe1 = Recipe.create(name: "Cuban Black Bean Soup", category: "soup", description: "savory", creator_id: 1)
recipe2 = Recipe.create(name: "Banana Bread", category: "cake", description: "sweet", creator_id: 1)
recipe3 = Recipe.create(name: "Black Beans and Rice", category: "rice", description: "savory", creator_id: 2)
recipe4 = Recipe.create(name: "Chicken Soup", category: "soup", description: "savory", creator_id: 2)
recipe5 = Recipe.create(name: "Veggie Ommelette", category: "eggs", description: "savory", creator_id: 3)
recipe6 = Recipe.create(name: "Tofu Veggie Noodles", category: "noodles", description: "savory", creator_id: 3)
recipe7 = Recipe.create(name: "Tuna Sandwhich", category: "sandwhich", description: "savory", creator_id: 3)

ingredient1 = Ingredient.create(name: "Chicken", category: "meat")
ingredient2 = Ingredient.create(name: "Egg", category: "egg")
ingredient3 = Ingredient.create(name: "Salt", category: "spice")
ingredient4 = Ingredient.create(name: "Pepper", category: "spice")
ingredient5 = Ingredient.create(name: "Garlic Powder", category: "spice")
ingredient6 = Ingredient.create(name: "Cayenne Pepper", category: "spice")
ingredient7 = Ingredient.create(name: "Cumin", category: "spice")
ingredient8 = Ingredient.create(name: "Canola Oil", category: "oil")
ingredient9 = Ingredient.create(name: "Ginger", category: "spice")
ingredient_10 = Ingredient.create(name: "Bananas", category: "fruit")
ingredient_11 = Ingredient.create(name: "milk", category: "condiment")
ingredient_12 = Ingredient.create(name: "Honey", category: "condiment")
ingredient_13 = Ingredient.create(name: "Whole Wheat Flour", category: "starch")
ingredient_14 = Ingredient.create(name: "Chocolate Chips", category: "sweet")
ingredient_15 = Ingredient.create(name: "Vanilla Extract", category: "condiment")
ingredient_16 = Ingredient.create(name: "Black Beans", category: "vegetable")
ingredient_17 = Ingredient.create(name: "Brown Rice", category: "starch")
ingredient_18 = Ingredient.create(name: "Tofu", category: "protein")
ingredient_19 = Ingredient.create(name: "Celery", category: "vegetable")
ingredient_20 = Ingredient.create(name: "Red Onion", category: "vegetable")
ingredient_21 = Ingredient.create(name: "Tomato", category: "vegetable")
ingredient_22 = Ingredient.create(name: "Lemon Juice", category: "liquid")
ingredient_23 = Ingredient.create(name: "Bean Sprouts", category: "vegetable")
ingredient_24 = Ingredient.create(name: "Romaine Lettuce", category: "vegetable")
ingredient_25 = Ingredient.create(name: "Sriracha", category: "condiment")
ingredient_26 = Ingredient.create(name: "Chummus", category: "spread")
ingredient_27 = Ingredient.create(name: "Tuna", category: "fish")
ingredient_28 = Ingredient.create(name: "Spaghetti", category: "starch")
ingredient_29 = Ingredient.create(name: "Water", category: "liquid")


RecipeIngredient.create(recipe_id: 1, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 5)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 6)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 8)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 16)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 19)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 20)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 21)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 25)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 29)



RecipeIngredient.create(recipe_id: 2, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 8)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 10)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 12)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 13)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 14)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 15)


RecipeIngredient.create(recipe_id: 3, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 4)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 5)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 6)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 7)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 8)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 16)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 17)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 20)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 21)
RecipeIngredient.create(recipe_id: 3, ingredient_id: 29)


UserRecipe.create(recipe_id: 1, user_id: 1)
UserRecipe.create(recipe_id: 2, user_id: 1)
UserRecipe.create(recipe_id: 2, user_id: 2)
UserRecipe.create(recipe_id: 3, user_id: 2)



