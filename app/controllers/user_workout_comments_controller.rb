class UserWorkoutCommentsController < ApplicationController
  def index
    @comments = UserWorkoutComment.all
    render json: @comments.as_json
  end

  def create
    comment = UserWorkoutComment.new(
      workout_id: params[:workout_id],
      user_id: params[:user_id],
      comment: params[:comment],
    )
    comment.save
    render json: comment.as_json
  end

  def destroy
    comment = UserWorkoutComment.find_by(id: params[:id])
    comment.destroy
    render json: { message: "Deleted Comment..." }
  end
end
