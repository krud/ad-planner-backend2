class RoomSerializer < ActiveModel::Serializer
    attributes :id, :name, :students, :max_capacity

    # def students
    #     object.students.where(room_id: @options[:room].id).map do |student|
    #       StudentSerializer.new(student, scope: scope, root: false)
    #     end
    # end
end