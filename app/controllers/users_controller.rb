class UsersController < ApplicationController
  def create
    user = User.create!(
      name: params[:name],
      email: params[:email],
      password_digest: params[:password_digest],
      image_url: params[:image_url],
    )

    if user.save
      render json: { message: "User successfully created." }
    else
      render json: { error: user.error.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.password_digest = params[:password_digest] || user.password_digest
    user.image_url = params[:image_url] || user.image_url

    if user.save
      render json: user
    else
      render json: { error: user.error.full_messages }, status: :bad_request
    end
  end
end
