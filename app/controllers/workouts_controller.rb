class WorkoutsController < ApplicationController
  def index
    workout = Workout.all
    render json: workout.as_json
  end

  def create
    workout = Workout.new(
      title: params[:title],
    )
    workout.save

    routine = Routine.where(status: "added")
    routine.each do |exercise|
      exercise.status = "archived"
      exercise.workout_id = workout.id
      exercise.save!
    end
    render json: routine.as_json
  end
end
