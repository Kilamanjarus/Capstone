class RoutineSetsController < ApplicationController
  def index
    routine_sets = RoutineSet.all()
    render json: routine_sets.as_json
  end

  def create
    routine_set = RoutineSet.new()
    routine_set.routine_id = params[:routine_id]
    routine_set.reps = params[:reps]
    routine_set.added_weight = params[:added_weight]
    routine_set.user_id = current_user.id
    routine_set.exercise_id = params[:exercise_id]
    routine_set.save!
    render json: routine_set.as_json
  end

  def destroy
    routine_set = RoutineSet.find_by(id: params[:id])
    routine_set.destroy
    render json: { message: "Set removed" }
  end

  def update
    routine_set = RoutineSet.find_by(id: params[:id])
    routine_set.reps = params[:reps] || reoutine_set.reps
    routine_set.added_weight = params[:added_weight] || reoutine_set.added_weight
    routine_set.save
    render json: routine_set.as_json
  end
end
