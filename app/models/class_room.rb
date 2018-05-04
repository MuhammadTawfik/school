class ClassRoom < ApplicationRecord
  
  validates_presence_of :title
  has_many :students,dependent: :restrict_with_error
end
