class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :tasks
  attribute :tasks do |project|
    project.tasks.map do |task|
      {
        id: task.id,
        name: task.name,
        description: task.description,
        users: task.users.map{ |user| {id: user.id, name: user.name} }
      }
    end
  end
end
