class Project < ApplicationRecord
  has_many :tasks
  has_many :users_task, through: :tasks
  has_many :users, through: :users_task
end
