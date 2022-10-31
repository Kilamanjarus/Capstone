class UserWorkoutCommentLikesController < ApplicationController
  def index
    @user_comment_likes = UserWorkoutCommentLike.all
    render json: @user_comment_likes.as_json
  end

  def create
    user_comment_like = UserWorkoutCommentLike.new
    user_comment_like.user_id = params[:user_id]
    user_comment_like.user_workout_comment_id = params[:user_workout_comment_id]
    user_comment_like.status = params[:status]
    user_comment_like.save!
    render json: user_comment_like.as_json
  end

  def destroy
    user_comment_like = UserWorkoutCommentLike.find_by(id: params[:id])
    user_comment_like.delete
    render json: { message: "Changed Liked" }
  end

  def update
    user_comment_like = UserWorkoutCommentLike.find_by(id: params[:id])
    if current_user.id == user_comment_like.user_id
      user_comment_like.status = params[:status]
      user_comment_like.save
    end
    render json: user_comment_like.as_json
  end
end
