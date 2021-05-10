class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :users_tasks
  has_many :tasks, through: :users_tasks
  has_many :projects, through: :tasks
end
