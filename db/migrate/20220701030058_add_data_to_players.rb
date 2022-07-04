class AddDataToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :first_name, :string
    add_column :players, :last_name, :string
    add_column :players, :position, :string
    add_column :players, :height_inches, :integer
    add_column :players, :ppg, :float
    add_column :players, :fg_percent, :float
    add_column :players, :ft_percent, :float
    add_column :players, :rebounds, :float
    add_column :players, :assists, :float
    add_column :players, :steals, :float
    add_column :players, :blocks, :float
  end
end
