class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
  belongs_to :user
  belongs_to :project
end
