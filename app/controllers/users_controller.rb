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
end
