class WorkoutExerciseController < ApplicationController
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
end
