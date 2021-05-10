class Task < ApplicationRecord
  belongs_to :project
  has_many :users_tasks, dependent: :destroy
  has_many :users, through: :users_tasks, dependent: :destroy
end
