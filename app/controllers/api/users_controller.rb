class Api::UsersController < ApplicationController
  # before_action :authenticate_user

#View all users in WodUp
  def index
    @users = User.all
    render 'index.json.jb'
  end

  def show
    @user = current_user.user 
    render 'show.json.jb'
  end

#Create a new user (sign up page)
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      birth_date: params[:birth_date],
      height: params[:height],
      weight: params[:weight],
      user_name: params[:user_name],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      facebook_url: params[:facebook_url],
      twitter_url: params[:twitter_url],
      instagram_url: params[:instagram_url],
      address: params[:address],
      email: params[:email]
    ) 
    if @user.save!
      render 'successful.json.jb', status: :created
    else
      render 'unsuccessful.json.jb', status: :bad_request
    end
  end
end