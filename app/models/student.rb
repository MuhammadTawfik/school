class Student < ApplicationRecord
  belongs_to :class_room, touch: true
  validates_presence_of :name, :email, :class_room
end
