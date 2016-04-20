@food_data = 
{"report"=>
  
  {
   "food"=>
  
    {"ndbno"=>"01009",
     "name"=>"Cheese, cheddar",
     "fg"=>"Dairy and Egg Products",
     "nutrients"=>
      [
   
      {"nutrient_id"=>255,
        "name"=>"Water",
        "unit"=>"g",
        "value"=>37.02}

      {"nutrient_id"=>208,
        "name"=>"Energy",
        "unit"=>"kcal",
        "value"=>404.0}
       
      {"nutrient_id"=>203,
        "name"=>"Protein",
        "unit"=>"g",
        "value"=>22.87}
        
      {"nutrient_id"=>204,
        "name"=>"Total lipid (fat)",
        "unit"=>"g",
        "value"=>33.31}
        
      {"nutrient_id"=>205,
        "name"=>"Carbohydrate, by difference",
        "unit"=>"g",
        "value"=>3.09}
      
      {"nutrient_id"=>291,
        "name"=>"Fiber, total dietary",
        "unit"=>"g",
        "value"=>0.0}
      
      {"nutrient_id"=>269,
        "name"=>"Sugars, total",
        "unit"=>"g",
        "value"=>0.48}
      
       {"nutrient_id"=>213,
        "name"=>"Lactose",
        "unit"=>"g",
        "value"=>0.12}}}}




        # Ingredient name
        @ingredient = @food_data["report"]["food"]["name"]
        @category = @food_data["report"]["food"]["fg"]
        # Ingredients measure
        self.water =         @food_data["report"]["food"]["nutrients"]
        self.calories =      @food_data["report"]["food"]["nutrients"]
        self.protein =       @food_data["report"]["food"]["nutrients"]
        self.fats =          @food_data["report"]["food"]["nutrients"]
        self.carbohydrates = @food_data["report"]["food"]["nutrients"]
        self.fiber =         @food_data["report"]["food"]["nutrients"]
        self.sugars =        @food_data["report"]["food"]["nutrients"]
        self.lactose =       @food_data["report"]["food"]["nutrients"]
        self.water =         @food_data["report"]["food"]["nutrients"]

        
       
          