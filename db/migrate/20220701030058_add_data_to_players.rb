class AddDataToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :first_name, :string
    add_column :players, :last_name, :string
    add_column :players, :height, :integer
    add_column :players, :weight, :integer
    add_column :players, :position, :string
  end
end
