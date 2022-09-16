class RoutineController < ApplicationController
  def index
    p current_user
    @routines = Routine.all
    render template: "routines/index"
  end

  def create
    @routine = Routine.new(
      exercise_id: params[:exercise_id],
      workout_id: params[:workout_id],
      added_weight: params[:added_weight],
      reps: params[:reps],
      sets: params[:sets],
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
    else
      render json: { message: "Error, this exercise has been commited and is not able to be removed..." }
    end
  end

  def show
    @routine = Routine.find_by(id: params[:id])
    render template: "routines/show"
  end
end
