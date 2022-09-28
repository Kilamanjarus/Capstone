class UserequipController < ApplicationController
  def create
    @user_equipment = UserEquipment.new(
      user_id: params[:user_id],
      equipment_id: params[:equipment_id],
    )
    @user_equipment.save
    render json: @user_equipment.as_json
  end

  def destroy
    user_equipment = UserEquipment.find_by(id: params[:id])
    user_equipment.destroy
    render json: { message: "Deleted equipment from user..." }
  end
end
