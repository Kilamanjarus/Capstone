class UserequipController < ApplicationController
  def create
    p current_user.id
    p params[:id]
    @user_equipment = UserEquipment.new(
      user_id: current_user.id,
      equipment_id: params[:id],
    )
    @user_equipment.save!
    render json: @user_equipment.as_json
  end

  def destroy
    user_equipment = UserEquipment.find_by(equipment_id: params[:id], user_id: current_user.id)
    user_equipment.destroy
    render json: { message: "Deleted equipment from user..." }
  end
end
