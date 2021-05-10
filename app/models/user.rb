class User < ApplicationRecord
  has_many :users_task
  has_many :tasks, through: :users_task
  has_many :projects, through: :tasks
end
