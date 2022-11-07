class RoutinesController < ApplicationController
  def create #need to make it save to current_user.routines
    routine = Routine.create!(
      user_id: params[:user_id],
      exercise_id: params[:exercise_id],
      reps: params[:reps],
    )

    if routine.save
      render json: { message: "Exercise added to routine." }
    else
      render json: { error: routine.error.full_messages }
    end
  end

  def update #add current_user functionality
    routine = Routine.find_by(id: params[:id])
    routine.reps = params[:reps] || routine.reps
    routine.save

    render json: { message: "Routine successfully updated." }
  end

  def destroy #add current_user functionality
    routine = Routine.find_by(id: params[:id])
    routine.destroy
    render json: { message: "This part of your routine has successfully been removed." }
  end

  def show #do i need this?
    routine = Routine.find_by(id: params[:id])
    render json: routine
  end

  def index #add current_user functionality
    routine = Routine.all
    render json: routine
  end
end
