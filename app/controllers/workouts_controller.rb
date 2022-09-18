class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render template: "workouts/index"
  end

  def create
    workout = Workout.new(
      title: params[:title],
    )
    workout.save!

    routine = Routine.where(status: "added")
    routine.each do |exercise|
      exercise.status = "archived"
      exercise.workout_id = workout.id
      exercise.save!
    end
    render json: workout.as_json
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    render template: "workouts/show"
  end
end
