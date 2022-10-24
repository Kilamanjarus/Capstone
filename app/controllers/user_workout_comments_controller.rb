class UserWorkoutCommentsController < ApplicationController
  def index
    @user_workout_comments = UserWorkoutComment.all
    render template: "user_workout_comments/index"
  end

  def create
    comment = UserWorkoutComment.new(
      workout_id: params[:workout_id],
      user_id: current_user.id,
      comment: params[:comment],
    )
    comment.save
    render json: comment.as_json
  end

  def destroy
    comment = UserWorkoutComment.find_by(id: params[:id])
    if current_user.id == comment.user_id
      comment.destroy
    end
    render json: { message: "Deleted Comment..." }
  end
end
