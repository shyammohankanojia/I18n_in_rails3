class UsersController < ApplicationController
  def index
    @user =User.new
  end

  def new
    @user =User.new
  end
   def create
     @user =User.new(params[:user])
     if @user
      @user.save
      redirect_to :action =>'index'
     end

   end
   def user_list
    @users =User.find :all
   end
end
