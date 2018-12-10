class Course < ApplicationRecord
  has_many :matriculas
  has_many :user, through: :matriculas
  has_many :orders
end
