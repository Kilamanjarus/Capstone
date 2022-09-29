class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
    render template: "equipment/index"
  end
end
