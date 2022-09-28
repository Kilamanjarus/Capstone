def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(" ")
end

equipment = ["roller",
             "skierg machine",
             "stepmill machine",
             "tire",
             "hammer",
             "weighted",
             "dumbbell",
             "ez barbell",
             "band",
             "cable",
             "upper body ergometer",
             "rope",
             "elliptical machine",
             "kettlebell",
             "medicine ball",
             "leverage machine",
             "wheel roller",
             "barbell",
             "assisted",
             "resistance band",
             "bosu ball",
             "smith machine",
             "sled machine",
             "stability ball",
             "olympic barbell",
             "trap bar",
             "body weight",
             "stationary bike"]
equipment.each do |equip|
  p equip
  # Equipment.create(titleize(equip))
end
