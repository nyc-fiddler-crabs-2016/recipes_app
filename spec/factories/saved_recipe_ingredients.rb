FactoryGirl.define do
  factory :saved_recipe_ingredient do
    saved_recipe_id 1
    ingredient_id 1
    measurement_type "MyString"
    amount 1.5
  end
end
