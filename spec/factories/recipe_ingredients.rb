FactoryGirl.define do
  factory :recipe_ingredient do
    recipe nil
    ingredient nil
    measurement_type "MyString"
    amount 1.5
  end
end
