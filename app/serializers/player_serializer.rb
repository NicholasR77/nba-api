class PlayerSerializer < ActiveModel::Serializer
    attributes :first_name, :last_name, :position, :team, :age
end