class Composition < ApplicationRecord
    has_and_belongs_to_many :players

    def self.build_compositions_players_hash
        @compositions_players = {}
        @compositions = Composition.all

        @compositions.each do | composition |
        @compositions_players[composition.id] = {}
        @compositions_players[composition.id][:author] = composition.author
        @compositions_players[composition.id][:players] = []
            composition.players.each do |player|
                current_player = { first_name: player.first_name, last_name: player.last_name }
                @compositions_players[composition.id][:players].push(current_player)
            end
        end

        @compositions_players
    end
end
