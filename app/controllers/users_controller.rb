class UsersController < ApplicationController
  def new
  end

  def create
    @user= User.new(params[:user])
    if @user.save
      redirect_to root_path
    else
      @errors = @user.errors.full_messages
      render 'new'
  end
end
