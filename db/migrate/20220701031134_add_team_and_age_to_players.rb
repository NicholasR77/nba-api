class AddTeamAndAgeToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :team, :string
    add_column :players, :age, :integer
  end
end
