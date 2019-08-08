class Api::UsersController < ApplicationController

#view all users in WodUp
  def index
    @users = User.all
    render 'index.json.jb'
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
      password_digest: params[:password],
      facebook_url: params[:facebook_url],
      twitter_url: params[:twitter_url],
      instagram_url: params[:instagram_url],
      address: params[:address],
      email: params[:email]
    ) 
    if @user.save
      render 'successful.json.jb'
    else
      render 'unsuccessful.json.jb'
    end
  end
end