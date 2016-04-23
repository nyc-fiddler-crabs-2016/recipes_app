URI_BASE =  "http://api.nal.usda.gov/ndb"
API_KEY = Rails.application.secrets.usda_api
food_id = #the ndbno number which you got form a lookup at the database first.
@food_data = HTTParty.get(URI_BASE + "/nutrients/?format=json&api_key=API_KEY" +"&nutrients=255&nutrients=208&nutrients=203&nutrients=204&nutrients=205&nutrients=291&nutrients=269&nutrients=213" + food_id)




        @ingredient = @food_data["report"]["food"]["name"]
        @category = @food_data["report"]["food"]["fg"]
        # Ingredients measure
        self.water =         @food_data["report"]["foods"][0]["nutrients"]
        self.calories =      @food_data["report"]["foods"][0]["nutrients"]
        self.protein =       @food_data["report"]["foods"][0]["nutrients"]
        self.fats =          @food_data["report"]["foods"][0]["nutrients"]
        self.carbohydrates = @food_data["report"]["foods"][0]["nutrients"]
        self.fiber =         @food_data["report"]["foods"][0]["nutrients"]
        self.sugars =        @food_data["report"]["foods"][0]["nutrients"]
        self.lactose =       @food_data["report"]["foods"][0]["nutrients"]
        self.water =         @food_data["report"]["foods"][0]["nutrients"]


        measurement_details = @food_data["report"]["foods"][0]["measure"].partition(/\d[.]\d/)
        @recipe_ingredient.amount, @recipe_ingredient.measurement_type = measurement_details[1],measurement_details[2].lstrip!





       
          