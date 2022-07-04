class CreateCompositionsPlayersJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :compositions, :players
  end
end
