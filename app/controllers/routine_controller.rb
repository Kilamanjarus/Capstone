class RoutineController < ApplicationController
  def index
    routine = Routine.all
    render json: routine.as_json
  end

  def create
    routine = Routine.new(
      title: params[:title],
    )
    routine.save
    render json: routine.as_json

    workout_exercises = WorkoutExercise.where(status: "added")
    workout_exercises.each do |exercise|
      exercise.status = "archived"
      exercise.workout_id = routine.id
      exercise.save!
    end
    render json: workout_exercises.as_json
  end
end
