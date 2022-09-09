class ExerciseController < ApplicationController
  def index
    exercises = Exercise.all
    render json: exercises.as_json
  end

  def show
    exercise = Exercise.find_by(id: params[:id])
    render json: { message: "Show path..." }
  end
end
