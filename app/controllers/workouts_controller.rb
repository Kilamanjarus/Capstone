class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render template: "workouts/index"
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