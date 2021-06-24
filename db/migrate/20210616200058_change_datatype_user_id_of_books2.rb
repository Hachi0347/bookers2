class ChangeDatatypeUserIdOfBooks2 < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :user_id, :string
  end
end
