class Routine < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout, required: false
<<<<<<< HEAD
  belongs_to :user
=======
  belongs_to :user, required: false
>>>>>>> a25d9c31d9d3052970833bbf727a38f95a7b5b5e
end
