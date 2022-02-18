class UsersController < ApplicationController
  def index
    @users = User.includes(:contacts, :telephones).all
  end

  def show
    @user = User.find(params[:id])
    @contacts = Contact.includes(:telephones)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

