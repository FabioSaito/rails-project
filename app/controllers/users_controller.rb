class UsersController < ApplicationController
  def index
    @users = User.includes(:contacts, :telephones).all
  end

  def show
    @user = User.includes(:contacts, :telephones).find(params[:id])
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

