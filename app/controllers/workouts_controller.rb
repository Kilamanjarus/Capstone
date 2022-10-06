class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render template: "workouts/index"
  end

  def create
    workout = Workout.new(
      title: params[:title],
      user: current_user,
    )
    workout.save!

    routine = Routine.where(status: "added")
    routine.each do |exercise|
      if exercise.user_id == current_user.id
        exercise.status = "archived"
        exercise.workout_id = workout.id
        exercise.save!
      end
    end
    render json: workout.as_json
  end

  def show
    @workout = Workout.find_by(id: params[:id])
    render template: "workouts/show"
  end

  def destroy
    @workout = Workout.find_by(id: params[:id])
    @workout.delete
  end
end
