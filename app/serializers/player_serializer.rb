class PlayerSerializer < ActiveModel::Serializer
    attributes :first_name, :last_name, :position, :team, :age, :value, :height_inches, :ppg, :fg_percent, :ft_percent, :rebounds, :assists, :steals, :blocks
end