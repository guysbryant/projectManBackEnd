class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :users_tasks, through: :tasks, dependent: :destroy
  has_many :users, through: :users_tasks, dependent: :destroy
end
