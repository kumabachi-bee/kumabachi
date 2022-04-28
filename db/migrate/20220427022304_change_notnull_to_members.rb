class ChangeNotnullToMembers < ActiveRecord::Migration[5.2]
  def up
    change_column_null :members, :name, false
    change_column_null :members, :name_kana, false
    change_column_null :members, :birthday, false
    change_column_null :members, :tel, false
  end
  
  def down
    change_column_null :members, :name, true
    change_column_null :members, :name_kana, true
    change_column_null :members, :birthday, true
    change_column_null :members, :tel, true
  end
end
