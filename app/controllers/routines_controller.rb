class RoutinesController < ApplicationController
  before_action :authenticate_user

  def create
    if current_user
      routine = Routine.create!(
        user_id: current_user.id,
        exercise_id: params[:exercise_id],
        reps: params[:reps],
      )

      if routine.save
        render json: routine
      else
        render json: { error: routine.error.full_messages }, status: :unprocessable_entity
      end
    end
  end

  def update #need to allow user to only update their own
    if current_user
      routine = Routine.find_by(id: params[:id])
      routine.reps = params[:reps] || routine.reps

      if routine.save
        render json: { message: "Routine successfully updated." }
      else
        render json: { error: routine.error.full_messages }
      end
    end
  end

  def destroy #only allow user to destroy their own
    routine = Routine.find_by(id: params[:id])
    routine.destroy
    render json: { message: "This part of your routine has successfully been removed." }
  end

  def show #do i need this?
    routine = Routine.find_by(id: params[:id])
    render json: routine
  end

  def index
    @routines = current_user.routines
    render template: "routines/index"
  end
end
