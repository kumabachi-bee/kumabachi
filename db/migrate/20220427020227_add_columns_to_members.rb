class AddColumnsToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :name, :string
    add_column :members, :name_kana, :string
    add_column :members, :gender, :boolean, default: true, null: false
    add_column :members, :birthday, :date
    add_column :members, :tel, :string
    add_column :members, :is_mail_magazine, :boolean, default: true, null: false
    add_column :members, :is_deleted, :boolean, default: false, null: false
  end
end
