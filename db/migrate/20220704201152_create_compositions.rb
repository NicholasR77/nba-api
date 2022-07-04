class CreateCompositions < ActiveRecord::Migration[6.0]
  def change
    create_table :compositions do |t|
      t.string :author
      t.integer :votes

      t.timestamps
    end
  end
end
