class Course < ApplicationRecord
  has_many :matriculas, dependent: :delete_all
  has_many :users, through: :matriculas
  has_many :orders
end
