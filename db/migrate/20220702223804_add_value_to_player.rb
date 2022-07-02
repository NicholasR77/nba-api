class AddValueToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :value, :integer
  end
end
