class UserFavoriteWorkoutsController < ApplicationController
  def index
    @user_favorite_workouts = UserFavoriteWorkout.where(user_id: current_user.id)
    render template: "user_favorite_workouts/index"
  end

  def create
    user_favorite = UserFavoriteWorkout.new
    user_favorite.workout_id = params[:workout_id]
    user_favorite.user_id = current_user.id
    user_favorite.save
    render json: user_favorite.as_json
  end

  def destroy
    user_favorite = UserFavoriteWorkout.find_by(id: params[:id])
    user_favorite.destroy
    render json: { message: "Deleted User Favorite" }
  end
end
