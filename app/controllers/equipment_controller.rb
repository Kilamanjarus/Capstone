class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
    @equipment = @equipment.sort_by(&:equipment_name)
    equipment_arrays = []
    length = @equipment.length
    i = 0
    while (i < 7)
      equipment_arrays << @equipment.slice(i * 4, 4)
      i += 1
    end
    @equipment = equipment_arrays
    render template: "equipment/index"
  end
end
