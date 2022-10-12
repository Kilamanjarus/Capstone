class UserVotesController < ApplicationController
  def index
    @user_votes = UserVote.all
    render json: @user_votes.as_json
  end

  def show
    @user_votes = UserVote.where(workout_id: params[:id])
    render json: @user_votes.as_json
  end

  def create
    user_vote = UserVote.new
    user_vote.user_id = current_user.id
    user_vote.workout_id = params[:workout_id]
    user_vote.vote = params[:vote]
    user_vote.save
    render json: user_vote.as_json
  end

  def update
    user_vote = UserVote.find_by(id: params[:id])
    if current_user.id == user_vote.user_id
      user_vote.vote = params[:vote]
      user_vote.save
      render json: user_vote.as_json
    else
      render json: { mnessage: "Not logged in" }
    end
  end

  def destroy
    user_vote = UserVote.find_by(id: params[:id])
    user_vote.delete
    render json: { message: "Vote removed..." }
  end
end
