class RecipeIngredient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  def measurement
  end

  def amount
  end

  def lactose_free?
  	!self.lactose
  end
  
end
