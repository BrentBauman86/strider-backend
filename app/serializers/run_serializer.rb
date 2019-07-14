class RunSerializer < ActiveModel::Serializer
  attributes :id, :name, :distance, :date, :comment, :user_id
  
  # def owner
  #   {owner_id: self.object.user.id,
  #   owner_name: self.object.person.name}
  # end 
end
