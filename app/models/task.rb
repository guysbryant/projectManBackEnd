class Task < ApplicationRecord
  belongs_to :project
  has_many :users_task
  has_many :users, through: :users_task
end
