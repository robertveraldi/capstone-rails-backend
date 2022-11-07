class UsersController < ApplicationController
  def create
    user = User.create!(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      image_url: params[:image_url],
    )

    if user.save
      render json: { message: "User successfully created." }
    else
      render json: { error: user.error.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def update #password functionality?
    user = User.find_by(id: params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.image_url = params[:image_url] || user.image_url

    if user.save
      render json: user
    else
      render json: { error: user.error.full_messages }, status: :bad_request
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User deleted successfully." }
  end
end
