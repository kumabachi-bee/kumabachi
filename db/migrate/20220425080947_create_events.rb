class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.integer :limit
      t.boolean :is_available
      t.integer :category
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
