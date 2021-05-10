class User < ApplicationRecord
  has_many :users_tasks, dependent: :destroy
  has_many :tasks, through: :users_tasks, dependent: :destroy
  has_many :projects, through: :tasks, dependent: :destroy
end
