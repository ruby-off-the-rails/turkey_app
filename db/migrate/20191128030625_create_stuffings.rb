class CreateStuffings < ActiveRecord::Migration[6.0]
  def change
    create_table :stuffings do |t|
      t.string :color
      t.integer :weight
      t.text :description
      t.string :flavor

      t.timestamps
    end
  end
end
