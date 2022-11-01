class RoutineSetsController < ApplicationController
  def index
    routine_sets = RoutineSet.all()
    render json: routine_sets.as_json
  end

  def create
    routine_set = RoutineSet.new()
    routine_set.routine_id = params[:routine_id]
    routine_set.sets = params[:sets]
    routine_set.reps = params[:reps]
    routine_set.added_weight = params[:added_weight]
    routine_set.save
    render json: routine_set.as_json
  end
end
