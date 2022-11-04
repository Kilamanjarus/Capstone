class RoutineController < ApplicationController
  def index
    @routines = Routine.where(user_id: current_user.id)
    render template: "routines/index"
  end

  def create
    p "#{current_user}"
    @routine = Routine.new(
      exercise_id: params[:exercise_id],
      workout_id: params[:workout_id],
      user_id: current_user.id,
      status: "added",
    )
    @routine.save
    render json: @routine.as_json
  end

  def update
    routine = Routine.find_by(id: params[:id])
    routine.added_weight = params[:added_weight] || routine.added_weight
    routine.reps = params[:reps] || routine.reps
    routine.sets = params[:sets] || routine.sets
    routine.save
    render json: routine.as_json
  end

  def destroy
    routine = Routine.find_by(id: params[:id])
    if routine.status == "added"
      routine.delete
      render json: { message: "Exercise has been removed..." }
    elsif routine.status == "archived"
      routine.delete
    else
      render json: { message: "Error, this exercise has been commited and is not able to be removed..." }
    end
  end

  def show
    @routine = Routine.find_by(id: params[:id])
    render template: "routines/show"
  end
end
