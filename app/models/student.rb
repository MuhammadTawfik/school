class Student < ApplicationRecord
  belongs_to :class_room
  validates_presence_of :name, :email, :class_room
end
