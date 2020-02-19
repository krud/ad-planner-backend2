class StudentSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :first_name, :last_name, :age
end
