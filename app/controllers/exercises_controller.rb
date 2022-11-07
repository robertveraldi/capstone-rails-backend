class ExercisesController < ApplicationController
  def index
    exercise = Exercise.all
    render json: exercise
  end

  def show
    exercise = Exercise.find_by(id: params[:id])
    render json: exercise
  end
end
