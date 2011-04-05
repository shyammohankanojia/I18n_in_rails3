class UsersController < ApplicationController
  def index
    @user =User.new
  end

  def new
    @user =User.new
  end
   def create
     @user =User.new(params[:user])
     if @user.save
      redirect_to :action =>'index'
      else
      redirect_to :action =>'new'
      end
   end

   def user_list
    @users =User.find :all
   end
end
