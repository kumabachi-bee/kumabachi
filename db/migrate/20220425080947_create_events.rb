class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.integer :limit
      t.integer :category, default: 0
      t.string :title
      t.text :body
      t.boolean :is_available, default: true
      t.timestamps
    end
  end
end
