class WorkoutExerciseController < ApplicationController
  def index
    exercises = WorkoutExercise.all
    render json: exercises.as_json
  end

  def create
    exercise = WorkoutExercise.new(
      exercise_id: params[:exercise_id],
      workout_id: params[:workout_id],
      added_weight: params[:added_weight],
      reps: params[:reps],
      sets: params[:sets],
      status: "added",
    )
    exercise.save
    render json: exercise.as_json
  end

  def update
    exercise = WorkoutExercise.find_by(id: params[:id])
    exercise.exercise_id = params[:exercise_id] || exercise.exercise_id
    exercise.added_weight = params[:added_weight] || exercise.added_weight
    exercise.reps = params[:reps] || exercise.reps
    exercise.sets = params[:sets] || exercise.sets
    exercise.save
    render json: exercise.as_json
  end
end
