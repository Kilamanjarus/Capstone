class RoutineController < ApplicationController
  def index
    routines = Routine.all
    render json: routines.as_json
  end

  def create
    routine = Routine.new(
      routine_id: params[:routine_id],
      workout_id: params[:workout_id],
      added_weight: params[:added_weight],
      reps: params[:reps],
      sets: params[:sets],
      status: "added",
    )
    routine.save
    render json: routine.as_json
  end

  def update
    routine = Routine.find_by(id: params[:id])
    routine.added_weight = params[:added_weight] || routine.added_weight
    routine.reps = params[:reps] || routine.reps
    routine.sets = params[:sets] || routine.sets
    exercise.save
    render json: exercise.as_json
  end
end
