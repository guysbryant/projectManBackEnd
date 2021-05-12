class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
  attribute :tasks do |project|
    project.tasks.map do |task|
      {
        id: task.id,
        attributes: {
          name: task.name,
          description: task.description,
          users: task.users.map{ |user| {id: user.id, attributes: {name: user.name}} }
        }
      }
    end
  end
end
