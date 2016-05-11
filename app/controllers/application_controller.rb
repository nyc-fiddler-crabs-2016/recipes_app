class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_current_user, except: [:index, :show]
  helper_method :logged_in?
  helper_method :current_user

  # Can I put all these helper methods on one line separated by commas?
  
  URI_BASE =  "http://api.nal.usda.gov/ndb/nutrients/?format=json&api_key="
  API_KEY = Rails.application.secrets.usda_api
  NUTRIENT_LIST = "&nutrients=255&nutrients=208&nutrients=203&nutrients=204&nutrients=205&nutrients=291&nutrients=269&nutrients=213"
  CATEGORIES = {
    "01" => "Dairy and Egg",
    "02" => "Spices and Herbs",
    "04" => "Fats and Oils",
    "05" => "Poultry",
    "06" => "Soups, Sauces, and Gravies",
    "09" => "Fruits and Fruit Juices",
    "11" => "Vegetables and Vegetable",
    "12" => "Nuts and Seeds",
    "13" => "Beef",
    "14" => "Beverages",
    "15" => "Fish",
    "16" => "Legumes",
    "18" => "Baked Goods",
    "19" => "Sweets",
    "20" => "Grains and Pasta",
    "25" => "Snacks"
     }

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  private
  
  def ensure_current_user
    redirect_to new_session_path unless current_user
  end
end